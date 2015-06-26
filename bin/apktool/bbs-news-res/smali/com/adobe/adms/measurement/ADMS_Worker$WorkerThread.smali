.class Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;
.super Ljava/lang/Thread;
.source "ADMS_Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adms/measurement/ADMS_Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field public canceled:Z

.field count:I

.field delay:J

.field public worker:Lcom/adobe/adms/measurement/ADMS_Worker;


# direct methods
.method public constructor <init>(Lcom/adobe/adms/measurement/ADMS_Worker;)V
    .locals 3
    .parameter "worker"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J

    .line 175
    iput v2, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->count:I

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    .line 177
    iput-boolean v2, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->canceled:Z

    .line 180
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    .line 181
    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->count:I

    .line 184
    :cond_0
    iget-wide v0, p1, Lcom/adobe/adms/measurement/ADMS_Worker;->throttleDelay:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->setDaemon(Z)V

    .line 186
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 190
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->canceled:Z

    if-nez v5, :cond_3

    .line 192
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOnline()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 193
    iget v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->count:I

    if-lez v5, :cond_1

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, request:Ljava/lang/String;
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 199
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 201
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    if-eqz v3, :cond_1

    .line 204
    :try_start_2
    invoke-static {v3}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->parseRequestProperties(Ljava/lang/String;)Lcom/adobe/adms/measurement/ADMS_RequestProperties;

    move-result-object v4

    .line 205
    .local v4, requestProps:Lcom/adobe/adms/measurement/ADMS_RequestProperties;
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->requestHandler:Lcom/adobe/adms/measurement/ADMS_RequestHandler;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$100(Lcom/adobe/adms/measurement/ADMS_Worker;)Lcom/adobe/adms/measurement/ADMS_RequestHandler;

    move-result-object v5

    invoke-virtual {v4}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->getHeaders()Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->sendRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 206
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iget-boolean v5, v5, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-eqz v5, :cond_1

    .line 207
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->writeToDisk()V

    .line 222
    .end local v3           #request:Ljava/lang/String;
    .end local v4           #requestProps:Lcom/adobe/adms/measurement/ADMS_RequestProperties;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    :try_start_3
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    iput v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->count:I

    .line 224
    iget v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->count:I

    if-nez v5, :cond_2

    .line 225
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->canceled:Z

    .line 227
    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 231
    :goto_2
    :try_start_4
    iget-wide v6, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 232
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iget-wide v6, v5, Lcom/adobe/adms/measurement/ADMS_Worker;->throttleDelay:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, e:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppMeasurement Error : Background Thread Interrupted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 237
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_3
    return-void

    .line 201
    .restart local v3       #request:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 210
    .restart local v4       #requestProps:Lcom/adobe/adms/measurement/ADMS_RequestProperties;
    :cond_4
    const-string v5, "AppMeasurement Error : Error Sending Hit"

    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 212
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iget-boolean v5, v5, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-eqz v5, :cond_1

    .line 213
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 214
    const-wide/16 v8, 0x7530

    :try_start_7
    iput-wide v8, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J

    .line 215
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    #getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->queuedMessages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000(Lcom/adobe/adms/measurement/ADMS_Worker;)Ljava/util/Vector;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 216
    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 227
    .end local v3           #request:Ljava/lang/String;
    .end local v4           #requestProps:Lcom/adobe/adms/measurement/ADMS_RequestProperties;
    :catchall_2
    move-exception v5

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v5

    .line 229
    :cond_5
    const-wide/16 v6, 0x7530

    iput-wide v6, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_2
.end method
