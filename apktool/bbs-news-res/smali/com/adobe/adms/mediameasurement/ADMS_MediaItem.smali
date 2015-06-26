.class public Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
.super Ljava/lang/Object;
.source "ADMS_MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$1;,
        Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;
    }
.end annotation


# static fields
.field static m:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;


# instance fields
.field public complete:Z

.field public completeTracked:Z

.field public firstEventList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lastEventOffset:D

.field public lastEventTimestamp:D

.field public lastEventType:I

.field public lastMilestone:I

.field public lastOffsetMilestone:I

.field public lastTrackOffset:D

.field public length:D

.field private monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

.field public name:Ljava/lang/String;

.field public offset:D

.field public percent:D

.field public playerID:Ljava/lang/String;

.field public playerName:Ljava/lang/String;

.field public segment:Ljava/lang/String;

.field public segmentChanged:Z

.field public segmentGenerated:Z

.field segmentLength:D

.field public segmentNum:I

.field public session:Ljava/lang/String;

.field public timePlayed:D

.field public timePlayedSinceTrack:D

.field public timestamp:D

.field public trackCount:I

.field public updateSegment:Z

.field public viewTracked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method protected startMonitor()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    iget-boolean v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->canceled:Z

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    iget-boolean v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->canceled:Z

    if-eqz v0, :cond_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->stopMonitor()V

    .line 49
    new-instance v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;-><init>(Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$1;)V

    iput-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    .line 50
    iget-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    iput-object p0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->monitorMediaItem:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    .line 51
    iget-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    invoke-virtual {v0}, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->start()V

    goto :goto_0
.end method

.method protected stopMonitor()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;->canceled:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->monitor:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem$MonitorThread;

    .line 60
    monitor-exit v1

    .line 62
    :cond_0
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
