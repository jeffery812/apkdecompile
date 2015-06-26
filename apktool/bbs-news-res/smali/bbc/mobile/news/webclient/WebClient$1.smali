.class Lbbc/mobile/news/webclient/WebClient$1;
.super Ljava/lang/Object;
.source "WebClient.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/webclient/WebClient;->downloadFileToDisk(Landroid/content/Context;Ljava/io/File;Lbbc/mobile/news/webclient/WebClient$OnProgressListener;Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/webclient/WebClient;

.field private final synthetic val$fileOutput:Ljava/io/File;

.field private final synthetic val$fileURL:Ljava/lang/String;

.field private final synthetic val$progressListener:Lbbc/mobile/news/webclient/WebClient$OnProgressListener;


# direct methods
.method constructor <init>(Lbbc/mobile/news/webclient/WebClient;Ljava/io/File;Lbbc/mobile/news/webclient/WebClient$OnProgressListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/webclient/WebClient$1;->this$0:Lbbc/mobile/news/webclient/WebClient;

    iput-object p2, p0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileOutput:Ljava/io/File;

    iput-object p3, p0, Lbbc/mobile/news/webclient/WebClient$1;->val$progressListener:Lbbc/mobile/news/webclient/WebClient$OnProgressListener;

    iput-object p4, p0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileURL:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;
    .locals 19
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 149
    .local v17, statusCode:I
    const/16 v6, 0xc8

    move/from16 v0, v17

    if-ne v0, v6, :cond_3

    .line 151
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 153
    .local v12, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v12, :cond_2

    .line 155
    const/4 v13, 0x0

    .line 156
    .local v13, lastProgress:I
    const-wide/16 v8, 0x0

    .local v8, contentLength:J
    const-wide/16 v4, 0x0

    .line 157
    .local v4, outputLength:J
    const/4 v10, 0x0

    .line 158
    .local v10, contentStream:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 162
    .local v15, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 163
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 165
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileOutput:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 167
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileOutput:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 168
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileOutput:Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    .end local v15           #outputStream:Ljava/io/FileOutputStream;
    .local v16, outputStream:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 172
    .local v2, outputChannel:Ljava/nio/channels/FileChannel;
    invoke-static {v10}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    .line 173
    .local v3, contentChannel:Ljava/nio/channels/ReadableByteChannel;
    :cond_0
    :goto_1
    cmp-long v6, v4, v8

    if-ltz v6, :cond_1

    .line 185
    invoke-static/range {v16 .. v16}, Lbbc/mobile/news/webclient/WebClient;->syncStream(Ljava/io/FileOutputStream;)Z

    .line 186
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 201
    .end local v2           #outputChannel:Ljava/nio/channels/FileChannel;
    .end local v3           #contentChannel:Ljava/nio/channels/ReadableByteChannel;
    .end local v4           #outputLength:J
    .end local v8           #contentLength:J
    .end local v10           #contentStream:Ljava/io/InputStream;
    .end local v12           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v13           #lastProgress:I
    .end local v16           #outputStream:Ljava/io/FileOutputStream;
    :goto_2
    return-object v6

    .line 175
    .restart local v2       #outputChannel:Ljava/nio/channels/FileChannel;
    .restart local v3       #contentChannel:Ljava/nio/channels/ReadableByteChannel;
    .restart local v4       #outputLength:J
    .restart local v8       #contentLength:J
    .restart local v10       #contentStream:Ljava/io/InputStream;
    .restart local v12       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v13       #lastProgress:I
    .restart local v16       #outputStream:Ljava/io/FileOutputStream;
    :cond_1
    const-wide/16 v6, 0x1000

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 176
    move-object/from16 v0, p0

    iget-object v6, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$progressListener:Lbbc/mobile/news/webclient/WebClient$OnProgressListener;

    if-eqz v6, :cond_0

    .line 177
    long-to-float v6, v4

    long-to-float v7, v8

    div-float/2addr v6, v7

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 178
    .local v14, newProgress:I
    sub-int v6, v14, v13

    const/16 v7, 0xa

    if-lt v6, v7, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$progressListener:Lbbc/mobile/news/webclient/WebClient$OnProgressListener;

    invoke-interface {v6, v14}, Lbbc/mobile/news/webclient/WebClient$OnProgressListener;->onProgress(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 180
    move v13, v14

    goto :goto_1

    .line 188
    .end local v2           #outputChannel:Ljava/nio/channels/FileChannel;
    .end local v3           #contentChannel:Ljava/nio/channels/ReadableByteChannel;
    .end local v14           #newProgress:I
    .end local v16           #outputStream:Ljava/io/FileOutputStream;
    .restart local v15       #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v11

    .line 189
    .local v11, e:Ljava/lang/Exception;
    :goto_3
    invoke-static {}, Lbbc/mobile/news/webclient/WebClient;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v18, "downloadFile: "

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v6, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileOutput:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    move-object/from16 v0, p0

    iget-object v6, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileOutput:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 192
    invoke-static {}, Lbbc/mobile/news/webclient/WebClient;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v18, "file deteled :"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileOutput:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v4           #outputLength:J
    .end local v8           #contentLength:J
    .end local v10           #contentStream:Ljava/io/InputStream;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v13           #lastProgress:I
    .end local v15           #outputStream:Ljava/io/FileOutputStream;
    :cond_2
    :goto_4
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto/16 :goto_2

    .line 198
    :cond_3
    invoke-static {}, Lbbc/mobile/news/webclient/WebClient;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v18, "downloadFile: Server responded "

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " for "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lbbc/mobile/news/webclient/WebClient$1;->val$fileURL:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 188
    .restart local v4       #outputLength:J
    .restart local v8       #contentLength:J
    .restart local v10       #contentStream:Ljava/io/InputStream;
    .restart local v12       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v13       #lastProgress:I
    .restart local v16       #outputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    move-object/from16 v15, v16

    .end local v16           #outputStream:Ljava/io/FileOutputStream;
    .restart local v15       #outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 166
    :catch_2
    move-exception v6

    goto/16 :goto_0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/webclient/WebClient$1;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
