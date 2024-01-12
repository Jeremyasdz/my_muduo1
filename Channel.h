#pragma once
#include <iostream>
#include <functional>
#include <memory>
#include <sys/epoll.h>


#include "./base/noncopyable.h"
#include "./base/Timestamp.h"

class EventLoop;
class Timestamp;

using namespace std;


class Channel:noncopyable
{
public:
    using EventCallBack = function <void()>;

    Channel(EventLoop* loop, int fd);
    ~Channel();

    void SetReadCallBack(EventCallBack cb){ readcallback_ = move(cb);}
    void SetWriteCallBack(EventCallBack cb){ writecallback_ = move(cb);}
    void SetErrorCallBack(EventCallBack cb) { errorcallback_ = move(cb);}
    void SetCloseCallBack(EventCallBack cb) { closecallback_ = move(cb);}

    void HandleEvent();

    int Getfd() const {return fd_;}
    int Getevents() const {return events_;}
    int Getindex() { return index_ ;}
    void SetIndex(int idx) {  index_ = idx;}
    void SetRevents(int revt) { revents_ = revt;}

    void enableReading() {events_ |= kReadEvent; update();}
    


    bool isNoneEvent() const {return events_ == kNoneEvent;}
    bool isWriting() const { return events_ & kWriteEvent;}
    bool isReading() const { return events_ & kReadEvent;}

    EventLoop* ownerLoop() { return loop_ ;}


private:
    EventLoop* loop_;
    void update();
    
    const int fd_;
    int events_;
    int revents_;
    int index_;

    EventCallBack readcallback_;
    EventCallBack writecallback_;
    EventCallBack errorcallback_;
    EventCallBack closecallback_;

    static const int kNoneEvent ;
    static const int kReadEvent ;
    static const int kWriteEvent ;

};