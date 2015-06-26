.class public Lbbc/mobile/news/webclient/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;
    }
.end annotation


# static fields
.field private static final LOG_PERFORMANCE:Z = true

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lbbc/mobile/news/webclient/CategoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createCategory(Lbbc/mobile/news/model/Feed;Z)Lbbc/mobile/news/model/Category;
    .locals 2
    .parameter "feed"
    .parameter "isAvCategory"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, category:Lbbc/mobile/news/model/Category;
    if-eqz p1, :cond_0

    .line 224
    new-instance v0, Lbbc/mobile/news/model/AVCategory;

    .end local v0           #category:Lbbc/mobile/news/model/Category;
    invoke-virtual {p0}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbbc/mobile/news/model/AVCategory;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v0       #category:Lbbc/mobile/news/model/Category;
    invoke-virtual {v0, p0}, Lbbc/mobile/news/model/Category;->setFeed_New(Lbbc/mobile/news/model/Feed;)V

    .line 237
    :goto_0
    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/model/Feed;->isWatchAndListen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    new-instance v0, Lbbc/mobile/news/model/AVCategory;

    .end local v0           #category:Lbbc/mobile/news/model/Category;
    invoke-virtual {p0}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbbc/mobile/news/model/AVCategory;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v0       #category:Lbbc/mobile/news/model/Category;
    invoke-virtual {v0, p0}, Lbbc/mobile/news/model/Category;->setFeed_New(Lbbc/mobile/news/model/Feed;)V

    .line 234
    :goto_1
    invoke-virtual {p0}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Category;->setId(I)V

    goto :goto_0

    .line 231
    :cond_1
    new-instance v0, Lbbc/mobile/news/model/Category;

    .end local v0           #category:Lbbc/mobile/news/model/Category;
    invoke-virtual {p0}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbbc/mobile/news/model/Category;-><init>(Ljava/lang/String;)V

    .restart local v0       #category:Lbbc/mobile/news/model/Category;
    goto :goto_1
.end method

.method public static final varargs declared-synchronized get(Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;IZ[Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;
    .locals 11
    .parameter "callback"
    .parameter "strategy"
    .parameter "isAVCategorys"
    .parameter "feeds"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 59
    const-class v10, Lbbc/mobile/news/webclient/CategoryManager;

    monitor-enter v10

    :try_start_0
    new-instance v0, Lbbc/mobile/news/handler/CategoryHandler;

    invoke-direct {v0}, Lbbc/mobile/news/handler/CategoryHandler;-><init>()V

    .line 60
    .local v0, categoryHandler:Lbbc/mobile/news/handler/CategoryHandler;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 61
    .local v1, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 62
    .local v2, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v2, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    array-length v3, p3

    if-ge v3, v4, :cond_0

    .line 75
    sget-object v3, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    const-string v4, "ERROR getFeeds() called with no feeds: "

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v9

    .line 85
    .end local v0           #categoryHandler:Lbbc/mobile/news/handler/CategoryHandler;
    .end local v1           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v2           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    monitor-exit v10

    return-object v3

    .line 64
    :catch_0
    move-exception v8

    .line 65
    .local v8, saxException:Lorg/xml/sax/SAXException;
    :try_start_2
    sget-object v3, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR: getFeeds() SAX Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->printStackTrace()V

    move-object v3, v9

    .line 67
    goto :goto_0

    .line 68
    .end local v8           #saxException:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v7

    .line 69
    .local v7, parserException:Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v3, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR: getFeeds() parserException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    move-object v3, v9

    .line 71
    goto :goto_0

    .line 79
    .end local v7           #parserException:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0       #categoryHandler:Lbbc/mobile/news/handler/CategoryHandler;
    .restart local v1       #parser:Ljavax/xml/parsers/SAXParser;
    .restart local v2       #xr:Lorg/xml/sax/XMLReader;
    :cond_0
    if-nez p0, :cond_1

    array-length v3, p3

    if-ne v3, v4, :cond_1

    .line 80
    const/4 v4, 0x0

    const/4 v3, 0x0

    aget-object v6, p3, v3

    move v3, p2

    move v5, p1

    invoke-static/range {v0 .. v6}, Lbbc/mobile/news/webclient/CategoryManager;->processFeed(Lbbc/mobile/news/handler/CategoryHandler;Ljavax/xml/parsers/SAXParser;Lorg/xml/sax/XMLReader;ZLbbc/mobile/news/webclient/CategoryManager$CategoryCallback;ILbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v3

    goto :goto_0

    :cond_1
    move v3, p2

    move-object v4, p0

    move v5, p1

    move-object v6, p3

    .line 82
    invoke-static/range {v0 .. v6}, Lbbc/mobile/news/webclient/CategoryManager;->processFeeds(Lbbc/mobile/news/handler/CategoryHandler;Ljavax/xml/parsers/SAXParser;Lorg/xml/sax/XMLReader;ZLbbc/mobile/news/webclient/CategoryManager$CategoryCallback;I[Lbbc/mobile/news/model/Feed;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v9

    .line 85
    goto :goto_0

    .line 59
    .end local v0           #categoryHandler:Lbbc/mobile/news/handler/CategoryHandler;
    .end local v1           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v2           #xr:Lorg/xml/sax/XMLReader;
    :catchall_0
    move-exception v3

    monitor-exit v10

    throw v3
.end method

.method private static final getFromSerializedCache(Ljava/io/InputStream;Lbbc/mobile/news/webclient/WebClient;Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;
    .locals 8
    .parameter "stream"
    .parameter "webClient"
    .parameter "feed"

    .prologue
    const/4 v5, 0x0

    .line 193
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 195
    invoke-virtual {p1}, Lbbc/mobile/news/webclient/WebClient;->existsInCache()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbbc/mobile/news/model/Category;
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 216
    :goto_0
    return-object v4

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, corruptedException:Ljava/io/StreamCorruptedException;
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    .line 211
    .end local v0           #corruptedException:Ljava/io/StreamCorruptedException;
    :cond_0
    :goto_1
    sget-object v4, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " does not exist in cache... getFromSerializedCache returning null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 212
    goto :goto_0

    .line 202
    :catch_1
    move-exception v3

    .line 203
    .local v3, securityException:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 204
    .end local v3           #securityException:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 205
    .local v2, ioException:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v2           #ioException:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 207
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :cond_1
    sget-object v4, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    const-string v6, "Request from cache failed null parameter"

    invoke-static {v4, v6}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 216
    goto :goto_0
.end method

.method private static final log(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Feed;IJZ)Lbbc/mobile/news/model/Category;
    .locals 3
    .parameter "category"
    .parameter "feed"
    .parameter "readStrategy"
    .parameter "startTime"
    .parameter "writtenToCache"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 245
    invoke-static/range {p0 .. p5}, Lbbc/mobile/news/webclient/CategoryManager;->printLog(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Feed;IJZ)V

    .line 250
    :goto_0
    return-object p0

    .line 247
    :cond_0
    sget-object v0, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    const-string v1, "ERROR - null feed requested from CategoryManager"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final printLog(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Feed;IJZ)V
    .locals 7
    .parameter "category"
    .parameter "feed"
    .parameter "readStrategy"
    .parameter "startTime"
    .parameter "writtenToCache"

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, p3

    .line 257
    .local v2, endTime:J
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 259
    .local v1, sucess:Z
    :goto_0
    const-string v4, "\n---------------- Perf Times: ----------------------\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Strategy: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lbbc/mobile/news/cache/Cache;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Time to get Category:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\nWritten to disk cache: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\nSucessfull:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v4, "\n---------------------------------------------------"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    sget-object v4, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 257
    .end local v1           #sucess:Z
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static final processFeed(Lbbc/mobile/news/handler/CategoryHandler;Ljavax/xml/parsers/SAXParser;Lorg/xml/sax/XMLReader;ZLbbc/mobile/news/webclient/CategoryManager$CategoryCallback;ILbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;
    .locals 20
    .parameter "categoryHandler"
    .parameter "parser"
    .parameter "xr"
    .parameter "isAVCategorys"
    .parameter "callback"
    .parameter "strategy"
    .parameter "feed"

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 92
    .local v6, startTime:J
    const/4 v8, 0x0

    .line 93
    .local v8, writtenToCache:Z
    const/4 v3, 0x0

    .line 95
    .local v3, category:Lbbc/mobile/news/model/Category;
    if-eqz p6, :cond_5

    .line 99
    :try_start_0
    new-instance v14, Lbbc/mobile/news/webclient/WebClient;

    invoke-virtual/range {p6 .. p6}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v14, v4, v5}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 100
    .local v14, webClient:Lbbc/mobile/news/webclient/WebClient;
    move/from16 v0, p5

    invoke-virtual {v14, v0}, Lbbc/mobile/news/webclient/WebClient;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v9

    .line 102
    .local v9, inputStream:Ljava/io/InputStream;
    if-eqz v9, :cond_4

    .line 104
    const/4 v4, 0x1

    move/from16 v0, p5

    if-eq v0, v4, :cond_0

    .line 105
    move-object/from16 v0, p6

    invoke-static {v9, v14, v0}, Lbbc/mobile/news/webclient/CategoryManager;->getFromSerializedCache(Ljava/io/InputStream;Lbbc/mobile/news/webclient/WebClient;Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v3

    .line 108
    :cond_0
    const/4 v4, 0x1

    move/from16 v0, p5

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    move/from16 v0, p5

    if-ne v0, v4, :cond_4

    if-nez v3, :cond_4

    .line 110
    :cond_1
    const/4 v3, 0x0

    .line 114
    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    .line 115
    .local v15, writer:Ljava/io/StringWriter;
    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-static {v0, v1}, Lbbc/mobile/news/webclient/CategoryManager;->createCategory(Lbbc/mobile/news/model/Feed;Z)Lbbc/mobile/news/model/Category;

    move-result-object v3

    .line 116
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lbbc/mobile/news/handler/CategoryHandler;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 118
    invoke-static {v9, v15}, Lbbc/mobile/news/util/OIUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 119
    invoke-virtual {v15}, Ljava/io/StringWriter;->close()V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 123
    .local v10, afterDownload:J
    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, xml:Ljava/lang/String;
    sget-object v4, Lbbc/mobile/news/helper/LinkGenerator;->CONTENT_START_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "<content><![CDATA["

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 125
    sget-object v4, Lbbc/mobile/news/helper/LinkGenerator;->CONTENT_END_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "]]></content>"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 129
    .local v12, afterDownloadAndRegEx:J
    sget-object v4, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v17, "Time to replace: "

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v18, v12, v10

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v17, " ms"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 132
    invoke-static {v14, v3}, Lbbc/mobile/news/webclient/CategoryManager;->putInSerializedCache(Lbbc/mobile/news/webclient/WebClient;Lbbc/mobile/news/model/Category;)Z

    move-result v8

    .line 134
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p3, :cond_2

    .line 135
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setLastCategoryUpdateTime(Landroid/content/Context;J)V

    .line 138
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lbbc/mobile/news/model/Category;->hasArticles()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_4

    .line 139
    :cond_3
    const/4 v3, 0x0

    .end local v9           #inputStream:Ljava/io/InputStream;
    .end local v10           #afterDownload:J
    .end local v12           #afterDownloadAndRegEx:J
    .end local v14           #webClient:Lbbc/mobile/news/webclient/WebClient;
    .end local v15           #writer:Ljava/io/StringWriter;
    .end local v16           #xml:Ljava/lang/String;
    :cond_4
    :goto_0
    move-object/from16 v4, p6

    move/from16 v5, p5

    .line 149
    invoke-static/range {v3 .. v8}, Lbbc/mobile/news/webclient/CategoryManager;->log(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Feed;IJZ)Lbbc/mobile/news/model/Category;

    move-result-object v4

    .line 153
    :goto_1
    return-object v4

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v17, "Exception: "

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const/4 v3, 0x0

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v4, p6

    move/from16 v5, p5

    .line 153
    invoke-static/range {v3 .. v8}, Lbbc/mobile/news/webclient/CategoryManager;->log(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Feed;IJZ)Lbbc/mobile/news/model/Category;

    move-result-object v4

    goto :goto_1
.end method

.method private static final varargs processFeeds(Lbbc/mobile/news/handler/CategoryHandler;Ljavax/xml/parsers/SAXParser;Lorg/xml/sax/XMLReader;ZLbbc/mobile/news/webclient/CategoryManager$CategoryCallback;I[Lbbc/mobile/news/model/Feed;)V
    .locals 9
    .parameter "categoryHandler"
    .parameter "parser"
    .parameter "xr"
    .parameter "isAVCategorys"
    .parameter "callback"
    .parameter "strategy"
    .parameter "feeds"

    .prologue
    .line 159
    sget-object v0, Lbbc/mobile/news/webclient/CategoryManager;->TAG:Ljava/lang/String;

    const-string v1, "processFeeds() called"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    array-length v8, p6

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 165
    return-void

    .line 161
    :cond_0
    aget-object v6, p6, v7

    .local v6, feed:Lbbc/mobile/news/model/Feed;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 162
    invoke-static/range {v0 .. v6}, Lbbc/mobile/news/webclient/CategoryManager;->processFeed(Lbbc/mobile/news/handler/CategoryHandler;Ljavax/xml/parsers/SAXParser;Lorg/xml/sax/XMLReader;ZLbbc/mobile/news/webclient/CategoryManager$CategoryCallback;ILbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    invoke-interface {p4, v0, v6}, Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;->sendCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Feed;)V

    .line 161
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method

.method private static final putInSerializedCache(Lbbc/mobile/news/webclient/WebClient;Lbbc/mobile/news/model/Category;)Z
    .locals 7
    .parameter "webClient"
    .parameter "category"

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0}, Lbbc/mobile/news/webclient/WebClient;->getFile()Ljava/io/File;

    move-result-object v1

    .line 170
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 172
    .local v2, objectStream:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v2           #objectStream:Ljava/io/ObjectOutputStream;
    .local v3, objectStream:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 180
    if-eqz v3, :cond_0

    .line 182
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 174
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move-object v2, v3

    .line 177
    .end local v3           #objectStream:Ljava/io/ObjectOutputStream;
    .restart local v2       #objectStream:Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_1
    return v4

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, exception:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    if-eqz v2, :cond_1

    .line 182
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 184
    :catch_1
    move-exception v5

    goto :goto_1

    .line 179
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 180
    :goto_3
    if-eqz v2, :cond_2

    .line 182
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 188
    :cond_2
    :goto_4
    throw v4

    .line 184
    .end local v2           #objectStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #objectStream:Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v3           #objectStream:Ljava/io/ObjectOutputStream;
    .restart local v2       #objectStream:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 179
    .end local v2           #objectStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #objectStream:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #objectStream:Ljava/io/ObjectOutputStream;
    .restart local v2       #objectStream:Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 175
    .end local v2           #objectStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #objectStream:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #objectStream:Ljava/io/ObjectOutputStream;
    .restart local v2       #objectStream:Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method
