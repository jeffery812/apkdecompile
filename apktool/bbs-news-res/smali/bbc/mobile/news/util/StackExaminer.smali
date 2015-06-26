.class public Lbbc/mobile/news/util/StackExaminer;
.super Ljava/lang/SecurityManager;
.source "StackExaminer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x723b33ea60a976c2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method

.method public static getStackTrace(Ljava/lang/String;)[Ljava/lang/StackTraceElement;
    .locals 3
    .parameter "tag"

    .prologue
    .line 19
    invoke-static {}, Lbbc/mobile/app/NewsApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/util/GlobalSettings;->getEnvironment(Landroid/content/Context;)Lbbc/mobile/news/util/Environment;

    move-result-object v1

    sget-object v2, Lbbc/mobile/news/util/Environment;->LIVE:Lbbc/mobile/news/util/Environment;

    if-ne v1, v2, :cond_0

    .line 20
    const/4 v1, 0x0

    .line 28
    :goto_0
    return-object v1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    .local v0, ex:Ljava/lang/Exception;
    if-eqz p0, :cond_1

    .line 24
    new-instance v0, Ljava/lang/Exception;

    .end local v0           #ex:Ljava/lang/Exception;
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    .restart local v0       #ex:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .end local v0           #ex:Ljava/lang/Exception;
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .restart local v0       #ex:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static getStackTraceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Lbbc/mobile/news/util/StackExaminer;->getStackTraceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "tag"

    .prologue
    const/4 v6, 0x0

    .line 39
    invoke-static {}, Lbbc/mobile/app/NewsApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbbc/mobile/news/util/GlobalSettings;->getEnvironment(Landroid/content/Context;)Lbbc/mobile/news/util/Environment;

    move-result-object v5

    sget-object v7, Lbbc/mobile/news/util/Environment;->LIVE:Lbbc/mobile/news/util/Environment;

    if-ne v5, v7, :cond_0

    .line 40
    const/4 v5, 0x0

    .line 69
    :goto_0
    return-object v5

    .line 42
    :cond_0
    invoke-static {p0}, Lbbc/mobile/news/util/StackExaminer;->getStackTrace(Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 43
    .local v4, ste:[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v3, sb:Ljava/lang/StringBuffer;
    if-eqz v4, :cond_1

    .line 45
    const/4 v1, 0x1

    .line 46
    .local v1, first:Z
    array-length v7, v4

    move v5, v6

    :goto_1
    if-lt v5, v7, :cond_2

    .line 69
    .end local v1           #first:Z
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 46
    .restart local v1       #first:Z
    :cond_2
    aget-object v0, v4, v5

    .line 47
    .local v0, element:Ljava/lang/StackTraceElement;
    const-class v8, Lbbc/mobile/news/util/StackExaminer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 48
    if-eqz v1, :cond_5

    .line 49
    const/4 v1, 0x0

    .line 53
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 55
    const-string v8, ".java"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_3
    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v8, " :"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :cond_5
    const-string v8, " | "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 59
    .restart local v2       #name:Ljava/lang/String;
    :cond_6
    const-string v2, "[?]"

    goto :goto_3
.end method


# virtual methods
.method public getCallerClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 9
    invoke-virtual {p0}, Lbbc/mobile/news/util/StackExaminer;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    .line 10
    .local v0, context:[Ljava/lang/Class;
    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    .line 11
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getCallerContext()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lbbc/mobile/news/util/StackExaminer;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
