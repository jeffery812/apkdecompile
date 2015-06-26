.class Lcom/omniture/AppMeasurementBase$1;
.super Ljava/lang/Thread;
.source "AppMeasurementBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/omniture/AppMeasurementBase;->requestThreadStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public _s:Lcom/omniture/AppMeasurementBase;

.field private _threadID:I

.field final synthetic this$0:Lcom/omniture/AppMeasurementBase;

.field final synthetic val$s:Lcom/omniture/AppMeasurementBase;

.field final synthetic val$threadID:I


# direct methods
.method constructor <init>(Lcom/omniture/AppMeasurementBase;Lcom/omniture/AppMeasurementBase;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/omniture/AppMeasurementBase$1;->this$0:Lcom/omniture/AppMeasurementBase;

    iput-object p2, p0, Lcom/omniture/AppMeasurementBase$1;->val$s:Lcom/omniture/AppMeasurementBase;

    iput p3, p0, Lcom/omniture/AppMeasurementBase$1;->val$threadID:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 494
    iget-object v0, p0, Lcom/omniture/AppMeasurementBase$1;->val$s:Lcom/omniture/AppMeasurementBase;

    iput-object v0, p0, Lcom/omniture/AppMeasurementBase$1;->_s:Lcom/omniture/AppMeasurementBase;

    .line 495
    iget v0, p0, Lcom/omniture/AppMeasurementBase$1;->val$threadID:I

    iput v0, p0, Lcom/omniture/AppMeasurementBase$1;->_threadID:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 498
    iget-object v0, p0, Lcom/omniture/AppMeasurementBase$1;->_s:Lcom/omniture/AppMeasurementBase;

    .line 499
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    invoke-virtual {v0}, Lcom/omniture/AppMeasurementBase;->handleRequestList()V

    .line 500
    iget-object v2, v0, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    monitor-enter v2

    .line 501
    :try_start_0
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/omniture/AppMeasurementBase$1;->_threadID:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    monitor-exit v2

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
