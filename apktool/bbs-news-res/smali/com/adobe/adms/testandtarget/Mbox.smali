.class public Lcom/adobe/adms/testandtarget/Mbox;
.super Ljava/lang/Object;
.source "Mbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adms/testandtarget/Mbox$1;,
        Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RESPONSE_TIME:J = 0x3a98L

.field private static final LOG_TAG:Ljava/lang/String; = "Mbox"

.field private static final MBOX_DEFAULT:Ljava/lang/String; = "/images/log.gif"

.field private static final OFFER_CONTENT_TYPE:Ljava/lang/String; = "text/plain; charset=utf-8"


# instance fields
.field private defaultContent:Ljava/lang/String;

.field private maxOfferResponseTime:J

.field private mboxName:Ljava/lang/String;

.field private mboxParameterList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private offerContent:Ljava/lang/String;

.field private offerTimeoutTask:Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;

.field private offerTimer:Ljava/util/Timer;

.field private onLoadConsumers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/adobe/adms/testandtarget/MboxContentConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private onLoadConsumersCalled:Z

.field private parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;


# direct methods
.method protected constructor <init>(Lcom/adobe/adms/testandtarget/MboxFactory;Ljava/lang/String;)V
    .locals 2
    .parameter "parentFactory"
    .parameter "mboxName"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->maxOfferResponseTime:J

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->mboxParameterList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->onLoadConsumers:Ljava/util/Vector;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->onLoadConsumersCalled:Z

    .line 69
    iput-object p1, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    .line 70
    iput-object p2, p0, Lcom/adobe/adms/testandtarget/Mbox;->mboxName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private buildMboxRequestURL()Ljava/lang/String;
    .locals 7

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, timeStamp:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    invoke-virtual {v4}, Lcom/adobe/adms/testandtarget/MboxFactory;->getBaseRequestURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .local v3, url:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mbox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    iget-object v6, p0, Lcom/adobe/adms/testandtarget/Mbox;->mboxName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/adobe/adms/testandtarget/MboxFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&mboxDefault="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    const-string v6, "/images/log.gif"

    invoke-virtual {v5, v6}, Lcom/adobe/adms/testandtarget/MboxFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&mboxContentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    const-string v6, "text/plain; charset=utf-8"

    invoke-virtual {v5, v6}, Lcom/adobe/adms/testandtarget/MboxFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&mboxTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v4, p0, Lcom/adobe/adms/testandtarget/Mbox;->mboxParameterList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/adobe/adms/testandtarget/MboxFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/adobe/adms/testandtarget/MboxFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private startOfferTimer()V
    .locals 4

    .prologue
    .line 206
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->offerTimer:Ljava/util/Timer;

    .line 207
    new-instance v0, Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;-><init>(Lcom/adobe/adms/testandtarget/Mbox;Lcom/adobe/adms/testandtarget/Mbox;Lcom/adobe/adms/testandtarget/Mbox$1;)V

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->offerTimeoutTask:Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;

    .line 208
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->offerTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/adobe/adms/testandtarget/Mbox;->offerTimeoutTask:Lcom/adobe/adms/testandtarget/Mbox$TimeoutTimerTask;

    iget-wide v2, p0, Lcom/adobe/adms/testandtarget/Mbox;->maxOfferResponseTime:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 209
    return-void
.end method


# virtual methods
.method public addMboxParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->mboxParameterList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public addOnLoadConsumer(Lcom/adobe/adms/testandtarget/MboxContentConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->onLoadConsumers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method protected declared-synchronized callOnLoadConsumers(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/adobe/adms/testandtarget/Mbox;->offerTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/adobe/adms/testandtarget/Mbox;->offerTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 170
    :cond_0
    if-nez p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/adobe/adms/testandtarget/Mbox;->defaultContent:Ljava/lang/String;

    .line 173
    :cond_1
    iget-boolean v2, p0, Lcom/adobe/adms/testandtarget/Mbox;->onLoadConsumersCalled:Z

    if-nez v2, :cond_2

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/adms/testandtarget/Mbox;->onLoadConsumersCalled:Z

    .line 175
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/adobe/adms/testandtarget/Mbox;->onLoadConsumers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v1, v2, :cond_2

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/adobe/adms/testandtarget/Mbox;->onLoadConsumers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/adms/testandtarget/MboxContentConsumer;

    invoke-interface {v2, p1}, Lcom/adobe/adms/testandtarget/MboxContentConsumer;->consume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 183
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public getFactory()Lcom/adobe/adms/testandtarget/MboxFactory;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    return-object v0
.end method

.method public declared-synchronized load()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/adms/testandtarget/MissingDefaultContentException;,
            Lcom/adobe/adms/testandtarget/MissingOnLoadConsumerException;
        }
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->defaultContent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/adobe/adms/testandtarget/MissingDefaultContentException;

    invoke-direct {v0}, Lcom/adobe/adms/testandtarget/MissingDefaultContentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->onLoadConsumers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Lcom/adobe/adms/testandtarget/MissingOnLoadConsumerException;

    invoke-direct {v0}, Lcom/adobe/adms/testandtarget/MissingOnLoadConsumerException;-><init>()V

    throw v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    invoke-virtual {v0}, Lcom/adobe/adms/testandtarget/MboxFactory;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    const-string v0, "Mbox"

    const-string v1, "WARNING: MboxFactory is disabled. Consuming default content."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->defaultContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/testandtarget/Mbox;->callOnLoadConsumers(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/adobe/adms/testandtarget/Mbox;->startOfferTimer()V

    .line 130
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->parentFactory:Lcom/adobe/adms/testandtarget/MboxFactory;

    invoke-direct {p0}, Lcom/adobe/adms/testandtarget/Mbox;->buildMboxRequestURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/adobe/adms/testandtarget/MboxFactory;->getMboxResponse(Lcom/adobe/adms/testandtarget/Mbox;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->offerContent:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/Mbox;->offerContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/testandtarget/Mbox;->callOnLoadConsumers(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setDefaultContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/adobe/adms/testandtarget/Mbox;->defaultContent:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setMaxResponseTime(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/adobe/adms/testandtarget/Mbox;->maxOfferResponseTime:J

    .line 157
    return-void
.end method
