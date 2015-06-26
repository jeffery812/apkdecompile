.class public final Lcom/adobe/adms/measurement/ADMS_Worker;
.super Ljava/lang/Object;
.source "ADMS_Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;
    }
.end annotation


# instance fields
.field private backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

.field protected cacheFilename:Ljava/lang/String;

.field private offlineForced:Z

.field protected offlineLimit:I

.field private queuedMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestHandler:Lcom/adobe/adms/measurement/ADMS_RequestHandler;

.field protected throttleDelay:D

.field protected trackOffline:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    .line 15
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    .line 16
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->throttleDelay:D

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineLimit:I

    .line 21
    new-instance v0, Lcom/adobe/adms/measurement/ADMS_RequestHandler;

    invoke-direct {v0}, Lcom/adobe/adms/measurement/ADMS_RequestHandler;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->requestHandler:Lcom/adobe/adms/measurement/ADMS_RequestHandler;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    .line 26
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->populateDefaults()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/adms/measurement/ADMS_Worker;)Lcom/adobe/adms/measurement/ADMS_RequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->requestHandler:Lcom/adobe/adms/measurement/ADMS_RequestHandler;

    return-object v0
.end method


# virtual methods
.method protected clearTrackingQueue()V
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 248
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->writeToDisk()V

    .line 249
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected deleteFromDisk()V
    .locals 4

    .prologue
    .line 153
    move-object v2, p0

    .line 154
    .local v2, s:Lcom/adobe/adms/measurement/ADMS_Worker;
    const/4 v1, 0x0

    .line 157
    .local v1, offlineFile:Ljava/io/File;
    iget-object v3, v2, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 160
    :try_start_0
    new-instance v1, Ljava/io/File;

    .end local v1           #offlineFile:Ljava/io/File;
    iget-object v3, v2, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .restart local v1       #offlineFile:Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :cond_0
    :goto_1
    return-void

    .line 161
    .end local v1           #offlineFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #offlineFile:Ljava/io/File;
    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method protected getTime()D
    .locals 4

    .prologue
    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 242
    .local v0, tm:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    return-wide v2
.end method

.method protected getTrackingQueueSize()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected killThread()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->canceled:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    .line 80
    monitor-exit v1

    .line 82
    :cond_0
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected populateDefaults()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    .line 86
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    .line 87
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->throttleDelay:D

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    .line 90
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    .line 91
    return-void
.end method

.method protected queue(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    if-eqz v0, :cond_4

    .line 35
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v2, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineLimit:I

    if-le v0, v2, :cond_2

    .line 39
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 42
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->writeToDisk()V

    .line 45
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :cond_4
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Worker;->setOnline(Z)V

    goto :goto_0
.end method

.method protected readFromDisk()V
    .locals 6

    .prologue
    .line 126
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, offlineFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 136
    .local v2, offlineIn:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, request:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 137
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    .end local v2           #offlineIn:Ljava/io/BufferedReader;
    .end local v3           #request:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppMeasurement Error : Cannot Read Requests From Disk : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #offlineIn:Ljava/io/BufferedReader;
    .restart local v3       #request:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    const-string v4, "AppMeasurement Error : Cannot delete offline hit cache."

    invoke-static {v4}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method protected setOnline(Z)V
    .locals 1
    .parameter "online"

    .prologue
    .line 53
    if-eqz p1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    iget-boolean v0, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->canceled:Z

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    iget-boolean v0, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->canceled:Z

    if-eqz v0, :cond_2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->killThread()V

    .line 60
    new-instance v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    invoke-direct {v0, p0}, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;-><init>(Lcom/adobe/adms/measurement/ADMS_Worker;)V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    .line 61
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    invoke-virtual {v0}, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->start()V

    .line 63
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    goto :goto_0

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    iget-boolean v0, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->canceled:Z

    if-nez v0, :cond_4

    .line 66
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->killThread()V

    .line 68
    :cond_4
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-eqz v0, :cond_5

    .line 69
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->writeToDisk()V

    .line 71
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    goto :goto_0
.end method

.method protected writeToDisk()V
    .locals 9

    .prologue
    .line 95
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, offlineFile:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, offlineOut:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v7, 0x2000

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v2           #offlineOut:Ljava/io/BufferedWriter;
    .local v3, offlineOut:Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .local v5, requestNum:I
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 105
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, request:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 107
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    .end local v4           #request:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_0

    .line 115
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppMeasurement Error : Cannont closed buffered writer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #offlineOut:Ljava/io/BufferedWriter;
    .end local v5           #requestNum:I
    .restart local v2       #offlineOut:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppMeasurement Error : Cannot Write Requests To Disk : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    if-eqz v2, :cond_0

    .line 115
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 116
    :catch_2
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppMeasurement Error : Cannont closed buffered writer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 114
    :goto_3
    if-eqz v2, :cond_3

    .line 115
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    :cond_3
    :goto_4
    throw v6

    .line 116
    :catch_3
    move-exception v0

    .line 117
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppMeasurement Error : Cannont closed buffered writer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    goto :goto_4

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #offlineOut:Ljava/io/BufferedWriter;
    .restart local v3       #offlineOut:Ljava/io/BufferedWriter;
    .restart local v5       #requestNum:I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #offlineOut:Ljava/io/BufferedWriter;
    .restart local v2       #offlineOut:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 109
    .end local v2           #offlineOut:Ljava/io/BufferedWriter;
    .restart local v3       #offlineOut:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #offlineOut:Ljava/io/BufferedWriter;
    .restart local v2       #offlineOut:Ljava/io/BufferedWriter;
    goto :goto_2
.end method
