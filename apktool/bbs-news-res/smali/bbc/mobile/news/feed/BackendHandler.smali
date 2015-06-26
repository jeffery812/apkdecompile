.class public abstract Lbbc/mobile/news/feed/BackendHandler;
.super Ljava/lang/Object;
.source "BackendHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field protected static final START_HANDLER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BackendHandler"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lbbc/mobile/news/feed/BackendHandler;->mName:Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BackendHandler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/feed/BackendHandler;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lbbc/mobile/news/feed/BackendHandler;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-direct {p0}, Lbbc/mobile/news/feed/BackendHandler;->start()V

    .line 21
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lbbc/mobile/news/feed/BackendHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbbc/mobile/news/feed/BackendHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 33
    return-void
.end method
