.class public final Lio/boxcar/push/util/b;
.super Lio/boxcar/push/util/a;
.source "RestHttpUrlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/boxcar/push/util/b$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lio/boxcar/push/util/a;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method

.method private b(Lio/boxcar/push/util/a$a;)V
    .locals 20
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v15, urlParams:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/boxcar/push/util/b;->a:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 123
    .local v5, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 124
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/NameValuePair;

    .line 125
    .local v9, nameValue:Lorg/apache/http/NameValuePair;
    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const/16 v17, 0x3d

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 131
    const/16 v17, 0x26

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 136
    .end local v9           #nameValue:Lorg/apache/http/NameValuePair;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/boxcar/push/util/b;->b()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 137
    const/16 v17, 0x0

    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 138
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/boxcar/push/util/b;->c:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v13, Ljava/net/URL;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 146
    .local v13, url:Ljava/net/URL;
    :goto_1
    const/4 v7, 0x0

    .line 147
    .local v7, in:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 149
    .local v10, out:Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 152
    .local v14, urlConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v14, v0

    .line 153
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 154
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Lio/boxcar/push/util/b;->d:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 156
    move-object/from16 v0, p0

    iget v0, v0, Lio/boxcar/push/util/b;->d:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 157
    sget-object v17, Lio/boxcar/push/util/a$a;->c:Lio/boxcar/push/util/a$a;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/boxcar/push/util/a$a;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 158
    const-string v17, "PUT"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 160
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lio/boxcar/push/util/b;->b()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/boxcar/push/util/b;->e:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 163
    sget-object v17, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v17, :cond_3

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 165
    const-string v17, "Connection"

    const-string v18, "close"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/boxcar/push/util/b;->b:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 170
    .local v4, h:Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 210
    .end local v4           #h:Lorg/apache/http/NameValuePair;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v17

    :goto_4
    if-eqz v10, :cond_4

    :try_start_1
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 211
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 212
    :cond_5
    :goto_6
    :try_start_3
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_7
    throw v17

    .line 142
    .end local v7           #in:Ljava/io/InputStream;
    .end local v10           #out:Ljava/io/OutputStream;
    .end local v13           #url:Ljava/net/URL;
    .end local v14           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/boxcar/push/util/b;->c:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 143
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/boxcar/push/util/b;->c:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v13       #url:Ljava/net/URL;
    goto/16 :goto_1

    .line 160
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    .restart local v14       #urlConnection:Ljava/net/HttpURLConnection;
    :cond_7
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    goto :goto_2

    .line 173
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->connect()V

    .line 175
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 176
    invoke-virtual/range {p0 .. p0}, Lio/boxcar/push/util/b;->b()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/boxcar/push/util/b;->e:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 181
    :goto_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 183
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    .line 186
    .local v12, responseCode:I
    :try_start_5
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 187
    .end local v7           #in:Ljava/io/InputStream;
    .local v8, in:Ljava/io/InputStream;
    :try_start_6
    new-instance v16, Ljava/io/StringWriter;

    invoke-direct/range {v16 .. v16}, Ljava/io/StringWriter;-><init>()V

    .line 188
    .local v16, writer:Ljava/io/StringWriter;
    const-string v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v8, v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 189
    invoke-virtual/range {v16 .. v16}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v11

    .local v11, response:Ljava/lang/String;
    move-object v7, v8

    .line 202
    .end local v8           #in:Ljava/io/InputStream;
    .end local v16           #writer:Ljava/io/StringWriter;
    .restart local v7       #in:Ljava/io/InputStream;
    :goto_9
    :try_start_7
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "HTTP response: \nCode: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nMessage: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nResponse: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v17, Lio/boxcar/push/util/RestResponse;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v11}, Lio/boxcar/push/util/RestResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/boxcar/push/util/b;->f:Lio/boxcar/push/util/RestResponse;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 210
    if-eqz v10, :cond_9

    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 211
    :cond_9
    :goto_a
    if-eqz v7, :cond_a

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 212
    :cond_a
    :goto_b
    :try_start_a
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 213
    :goto_c
    return-void

    .line 179
    .end local v11           #response:Ljava/lang/String;
    .end local v12           #responseCode:I
    :cond_b
    :try_start_b
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_8

    .line 190
    .restart local v12       #responseCode:I
    :catch_0
    move-exception v3

    .line 191
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    :goto_d
    const-string v17, "BXCF"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "No input stream from "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " request"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v12, v0, :cond_c

    const/16 v17, 0xcc

    move/from16 v0, v17

    if-eq v12, v0, :cond_c

    .line 194
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "{error: \""

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\"}"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #response:Ljava/lang/String;
    goto/16 :goto_9

    .line 196
    .end local v11           #response:Ljava/lang/String;
    :cond_c
    const-string v11, "{ok: \"unknown\"}"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .restart local v11       #response:Ljava/lang/String;
    goto/16 :goto_9

    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v17

    goto :goto_a

    :catch_2
    move-exception v17

    goto :goto_b

    .line 213
    :catch_3
    move-exception v17

    goto :goto_c

    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #response:Ljava/lang/String;
    .end local v12           #responseCode:I
    :catch_4
    move-exception v18

    goto/16 :goto_5

    :catch_5
    move-exception v18

    goto/16 :goto_6

    :catch_6
    move-exception v18

    goto/16 :goto_7

    .line 210
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v12       #responseCode:I
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto/16 :goto_4

    .line 190
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_d
.end method


# virtual methods
.method public final a(Lio/boxcar/push/util/a$a;)V
    .locals 13
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v10, Lio/boxcar/push/util/b$1;->a:[I

    invoke-virtual {p1}, Lio/boxcar/push/util/a$a;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 36
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v0, combinedParams:Ljava/lang/StringBuffer;
    iget-object v10, p0, Lio/boxcar/push/util/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 38
    const/16 v10, 0x3f

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    iget-object v10, p0, Lio/boxcar/push/util/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 40
    .local v5, p:Lorg/apache/http/NameValuePair;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, paramString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 43
    const/16 v10, 0x26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 50
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #p:Lorg/apache/http/NameValuePair;
    .end local v6           #paramString:Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lio/boxcar/push/util/b;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 53
    .local v8, urlConnection:Ljava/net/HttpURLConnection;
    iget v10, p0, Lio/boxcar/push/util/b;->d:I

    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 54
    iget v10, p0, Lio/boxcar/push/util/b;->d:I

    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    sget-object v10, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v10, :cond_2

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xd

    if-le v10, v11, :cond_2

    .line 58
    const-string v10, "Connection"

    const-string v11, "close"

    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    iget-object v10, p0, Lio/boxcar/push/util/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 63
    .local v1, h:Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 67
    .end local v1           #h:Lorg/apache/http/NameValuePair;
    :cond_3
    const/4 v3, 0x0

    .line 70
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    move-object v3, v4

    .line 77
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_3
    :try_start_2
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 78
    .local v9, writer:Ljava/io/StringWriter;
    const-string v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 79
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, response:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "HTTP response: \nCode: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\nMessage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\nResponse: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v10, Lio/boxcar/push/util/RestResponse;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12, v7}, Lio/boxcar/push/util/RestResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lio/boxcar/push/util/b;->f:Lio/boxcar/push/util/RestResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 90
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 74
    .end local v7           #response:Ljava/lang/String;
    .end local v9           #writer:Ljava/io/StringWriter;
    :catch_1
    move-exception v10

    :try_start_5
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 89
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 90
    :cond_4
    :goto_5
    :try_start_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_6
    throw v10

    .line 93
    .end local v0           #combinedParams:Ljava/lang/StringBuffer;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v8           #urlConnection:Ljava/net/HttpURLConnection;
    :pswitch_1
    sget-object v10, Lio/boxcar/push/util/a$a;->b:Lio/boxcar/push/util/a$a;

    invoke-direct {p0, v10}, Lio/boxcar/push/util/b;->b(Lio/boxcar/push/util/a$a;)V

    goto/16 :goto_0

    .line 103
    :pswitch_2
    sget-object v10, Lio/boxcar/push/util/a$a;->c:Lio/boxcar/push/util/a$a;

    invoke-direct {p0, v10}, Lio/boxcar/push/util/b;->b(Lio/boxcar/push/util/a$a;)V

    goto/16 :goto_0

    .line 110
    :pswitch_3
    invoke-super {p0, p1}, Lio/boxcar/push/util/a;->a(Lio/boxcar/push/util/a$a;)V

    goto/16 :goto_0

    .restart local v0       #combinedParams:Ljava/lang/StringBuffer;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v7       #response:Ljava/lang/String;
    .restart local v8       #urlConnection:Ljava/net/HttpURLConnection;
    .restart local v9       #writer:Ljava/io/StringWriter;
    :catch_2
    move-exception v10

    goto :goto_4

    .end local v7           #response:Ljava/lang/String;
    .end local v9           #writer:Ljava/io/StringWriter;
    :catch_3
    move-exception v11

    goto :goto_5

    :catch_4
    move-exception v11

    goto :goto_6

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
