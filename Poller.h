#pragma once

#include <iostream>
#include <vector>
#include <sys/epoll.h>
#include <map>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#include "./base/noncopyable.h"
#include "Channel.h"
#include "./base/Timestamp.h"


using namespace std;

class Poller
{
public:
    using ChannelList = vector<Channel*>; 

    Poller(EventLoop* loop);
    virtual ~Poller() = default;

    

    virtual Timestamp Poll(int timeoutMs, ChannelList* activeChannels) = 0;
    
    virtual void UpdateChannel(Channel* channel) = 0;
    virtual void RemoveChannel(Channel* channel) = 0;

    void HasChannel();

protected:
    using ChannelMap = map <int, Channel*>;
    ChannelMap channels_;

private:
    
    EventLoop* ownerloop_;


};
