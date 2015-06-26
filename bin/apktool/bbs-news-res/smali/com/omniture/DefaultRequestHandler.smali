.class public Lcom/omniture/DefaultRequestHandler;
.super Lcom/omniture/RequestHandler;
.source "DefaultRequestHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/omniture/RequestHandler;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 6
    .parameter "url"
    .parameter "headers"

    .prologue
    const/16 v5, 0x9

    .line 26
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 29
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 31
    .local v1, keys:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 39
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #keys:Ljava/util/Enumeration;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    const/4 v3, 0x1

    return v3
.end method
