.class public Lcom/omniture/AppMeasurementBaseSE13;
.super Lcom/omniture/AppMeasurementBase;
.source "AppMeasurementBaseSE13.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/omniture/AppMeasurementBase;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .line 21
    .local v0, s:Lcom/omniture/AppMeasurementBaseSE13;
    iget-object v1, v0, Lcom/omniture/AppMeasurementBaseSE13;->requestList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 22
    iget-object v2, v0, Lcom/omniture/AppMeasurementBaseSE13;->requestList:Ljava/util/Vector;

    monitor-enter v2

    .line 23
    :try_start_0
    iget-object v1, v0, Lcom/omniture/AppMeasurementBaseSE13;->requestList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 27
    return-void

    .line 24
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    return-object v0
.end method

.method protected getRequestHandler()Lcom/omniture/RequestHandler;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/omniture/AppMeasurementBaseSE13;->requestHandler:Lcom/omniture/RequestHandler;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/omniture/RequestHandlerSe13;

    invoke-direct {v0}, Lcom/omniture/RequestHandlerSe13;-><init>()V

    iput-object v0, p0, Lcom/omniture/AppMeasurementBaseSE13;->requestHandler:Lcom/omniture/RequestHandler;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/omniture/AppMeasurementBaseSE13;->requestHandler:Lcom/omniture/RequestHandler;

    return-object v0
.end method

.method protected offlineRequestListDelete()V
    .locals 4

    .prologue
    .line 96
    move-object v2, p0

    .line 97
    .local v2, s:Lcom/omniture/AppMeasurementBaseSE13;
    const/4 v1, 0x0

    .line 100
    .local v1, offlineFile:Ljava/io/File;
    iget-object v3, v2, Lcom/omniture/AppMeasurementBaseSE13;->offlineFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 103
    :try_start_0
    new-instance v1, Ljava/io/File;

    .end local v1           #offlineFile:Ljava/io/File;
    iget-object v3, v2, Lcom/omniture/AppMeasurementBaseSE13;->offlineFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .restart local v1       #offlineFile:Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 104
    .end local v1           #offlineFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #offlineFile:Ljava/io/File;
    goto :goto_0

    .line 110
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method protected offlineRequestListRead()V
    .locals 7

    .prologue
    .line 36
    move-object v4, p0

    .line 37
    .local v4, s:Lcom/omniture/AppMeasurementBaseSE13;
    const/4 v1, 0x0

    .line 42
    .local v1, offlineFile:Ljava/io/File;
    iget-object v5, v4, Lcom/omniture/AppMeasurementBaseSE13;->offlineFilename:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 45
    :try_start_0
    new-instance v1, Ljava/io/File;

    .end local v1           #offlineFile:Ljava/io/File;
    iget-object v5, v4, Lcom/omniture/AppMeasurementBaseSE13;->offlineFilename:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .restart local v1       #offlineFile:Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v2, offlineIn:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, request:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 53
    iget-object v6, v4, Lcom/omniture/AppMeasurementBaseSE13;->requestList:Ljava/util/Vector;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :try_start_2
    iget-object v5, v4, Lcom/omniture/AppMeasurementBaseSE13;->requestList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5

    .line 60
    .end local v2           #offlineIn:Ljava/io/BufferedReader;
    .end local v3           #request:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 63
    :cond_0
    :goto_2
    return-void

    .line 46
    .end local v1           #offlineFile:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #offlineFile:Ljava/io/File;
    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #offlineIn:Ljava/io/BufferedReader;
    .restart local v3       #request:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method protected offlineRequestListWrite()V
    .locals 8

    .prologue
    .line 66
    move-object v5, p0

    .line 67
    .local v5, s:Lcom/omniture/AppMeasurementBaseSE13;
    const/4 v1, 0x0

    .line 73
    .local v1, offlineFile:Ljava/io/File;
    iget-object v6, v5, Lcom/omniture/AppMeasurementBaseSE13;->offlineFilename:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/File;

    .end local v1           #offlineFile:Ljava/io/File;
    iget-object v6, v5, Lcom/omniture/AppMeasurementBaseSE13;->offlineFilename:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .restart local v1       #offlineFile:Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_1

    .line 83
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 84
    .local v2, offlineOut:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .local v4, requestNum:I
    :goto_1
    iget-object v6, v5, Lcom/omniture/AppMeasurementBaseSE13;->requestList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 85
    iget-object v6, v5, Lcom/omniture/AppMeasurementBaseSE13;->requestList:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, request:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v3, v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 87
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    .end local v1           #offlineFile:Ljava/io/File;
    .end local v2           #offlineOut:Ljava/io/BufferedWriter;
    .end local v3           #request:Ljava/lang/String;
    .end local v4           #requestNum:I
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #offlineFile:Ljava/io/File;
    goto :goto_0

    .line 89
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #offlineOut:Ljava/io/BufferedWriter;
    .restart local v4       #requestNum:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .end local v2           #offlineOut:Ljava/io/BufferedWriter;
    .end local v4           #requestNum:I
    :cond_1
    :goto_2
    return-void

    .line 90
    :catch_1
    move-exception v6

    goto :goto_2
.end method
