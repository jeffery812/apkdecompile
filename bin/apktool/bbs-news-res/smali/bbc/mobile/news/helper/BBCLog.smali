.class public final Lbbc/mobile/news/helper/BBCLog;
.super Ljava/lang/Object;
.source "BBCLog.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final DEV:Z = false

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final PREFIX:Ljava/lang/String; = "BBC."

.field public static final TAG_BACKEND:Ljava/lang/String; = "backend"

.field public static final TAG_IO:Ljava/lang/String; = "io"

.field public static final TAG_UI:Ljava/lang/String; = "ui"

.field public static final TAG_VO:Ljava/lang/String; = "vo"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 70
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 80
    return-void
.end method

.method public static final varargs dd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "tr"
    .parameter "args"

    .prologue
    .line 85
    return-void
.end method

.method public static final varargs dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 75
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 134
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 144
    return-void
.end method

.method public static final varargs ee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "tr"
    .parameter "args"

    .prologue
    .line 149
    return-void
.end method

.method public static final varargs ee(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 139
    return-void
.end method

.method public static final getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "tr"

    .prologue
    .line 154
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 90
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 100
    return-void
.end method

.method public static final varargs ii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "tr"
    .parameter "args"

    .prologue
    .line 105
    return-void
.end method

.method public static final varargs ii(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 95
    return-void
.end method

.method public static final isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BBC."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 49
    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 59
    return-void
.end method

.method public static final varargs vv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "tr"
    .parameter "args"

    .prologue
    .line 64
    return-void
.end method

.method public static final varargs vv(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 54
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 110
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 120
    return-void
.end method

.method public static final writeToLogStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "identifier"
    .parameter "content"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public static final varargs ww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "tr"
    .parameter "args"

    .prologue
    .line 125
    return-void
.end method

.method public static final varargs ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 115
    return-void
.end method

.method public static final xxx(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "obj"

    .prologue
    .line 168
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 177
    :goto_0
    return-object v3

    .line 169
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 170
    .local v1, length:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v2, r:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v3, ":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 176
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 174
    :cond_1
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
