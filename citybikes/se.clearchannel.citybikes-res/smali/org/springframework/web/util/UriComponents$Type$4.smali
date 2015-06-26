.class final enum Lorg/springframework/web/util/UriComponents$Type$4;
.super Lorg/springframework/web/util/UriComponents$Type;
.source "UriComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/util/UriComponents$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/springframework/web/util/UriComponents$Type;-><init>(Ljava/lang/String;ILorg/springframework/web/util/UriComponents$1;)V

    return-void
.end method


# virtual methods
.method public isAllowed(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponents$Type$4;->isUnreserved(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponents$Type$4;->isSubDelimiter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
