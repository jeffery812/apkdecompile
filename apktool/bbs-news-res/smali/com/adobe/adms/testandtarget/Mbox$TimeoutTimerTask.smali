.class Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;
.super Ljava/util/TimerTask;
.source "Mbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adms/testandtarget/Mbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTimerTask"
.end annotation


# instance fields
.field private _mbox:Lcom/adobe/adms/testandtarget/Mbox;

.field final synthetic this$0:Lcom/adobe/adms/testandtarget/Mbox;


# direct methods
.method private constructor <init>(Lcom/adobe/adms/testandtarget/Mbox;Lcom/adobe/adms/testandtarget/Mbox;)V
    .locals 0
    .parameter
    .parameter "parentMbox"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;->this$0:Lcom/adobe/adms/testandtarget/Mbox;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;->_mbox:Lcom/adobe/adms/testandtarget/Mbox;

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/adms/testandtarget/Mbox;Lcom/adobe/adms/testandtarget/Mbox;Lcom/adobe/adms/testandtarget/Mbox$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;-><init>(Lcom/adobe/adms/testandtarget/Mbox;Lcom/adobe/adms/testandtarget/Mbox;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;->_mbox:Lcom/adobe/adms/testandtarget/Mbox;

    invoke-virtual {v0}, Lcom/adobe/adms/testandtarget/Mbox;->getFactory()Lcom/adobe/adms/testandtarget/MboxFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/adms/testandtarget/MboxFactory;->disable()V

    .line 225
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;->_mbox:Lcom/adobe/adms/testandtarget/Mbox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/adms/testandtarget/Mbox;->callOnLoadConsumers(Ljava/lang/String;)V

    .line 226
    return-void
.end method
