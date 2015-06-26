.class public final Lcom/google/c/b;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0xb

    sput v0, Lcom/google/c/b;->a:I

    .line 129
    const/16 v0, 0xc

    sput v0, Lcom/google/c/b;->b:I

    .line 131
    const/16 v0, 0x10

    sput v0, Lcom/google/c/b;->c:I

    .line 133
    const/16 v0, 0x1a

    sput v0, Lcom/google/c/b;->d:I

    return-void
.end method

.method static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
