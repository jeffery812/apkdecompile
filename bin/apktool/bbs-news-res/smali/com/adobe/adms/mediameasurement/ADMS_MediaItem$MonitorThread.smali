.class Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;
.super Ljava/lang/Thread;
.source "ADMS_MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field public canceled:Z

.field delay:J

.field public monitorMediaItem:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 65
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->delay:J

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->canceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 71
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->canceled:Z

    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->monitorMediaItem:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    iget v1, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 74
    sget-object v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->m:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;

    iget-object v2, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->monitorMediaItem:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    iget-object v2, v2, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->name:Ljava/lang/String;

    const/4 v3, 0x3

    const-wide/high16 v4, -0x4010

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/high16 v8, -0x4010

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->playerEvent(Ljava/lang/String;IDILjava/lang/String;DLjava/lang/Object;)Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    .line 76
    :cond_0
    iget-wide v2, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->delay:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "ADMS_MediaMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppMeasurement Error : Background Thread Interrupted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
