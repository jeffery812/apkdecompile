.class final Lcom/google/ads/interactivemedia/v3/a/b/c$3;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/a/b/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/b/c;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/c$3;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/b/g;-><init>()V

    return-object v0
.end method
