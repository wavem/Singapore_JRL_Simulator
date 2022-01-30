//---------------------------------------------------------------------------

#ifndef MulticastSocketThreadH
#define MulticastSocketThreadH
//---------------------------------------------------------------------------
#include "Define.h"
#include <System.Classes.hpp>

enum ThreadWorkingType
{
	THREAD_STOP = 0,
	THREAD_RUNNING = 1,
	THREAD_TERMINATED = 2,
};
//---------------------------------------------------------------------------

class CUdpSocketThread : public TThread {
private:
	ThreadWorkingType	m_eThreadWork;
	SOCKET	*m_sock;

protected:
public: // Variables
	BYTE sendBuff[MCAST_SEND_BUF_SIZE];
	BYTE* p_sendText;
	BYTE recvBuff[MCAST_RECV_BUF_SIZE];
	//SERVERDATA recvData;
	bool isTryingToConnect;
	bool isConnected;

public: // Functions
	__fastcall CUdpSocketThread(SOCKET *p_sock);
	__fastcall ~CUdpSocketThread();
	bool __fastcall Receive();
	void __fastcall Execute();
	void __fastcall Stop();
	void __fastcall Resume();
	void __fastcall DoTerminate();
	ThreadWorkingType __fastcall GetThreadStatus();
};

//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
#endif
