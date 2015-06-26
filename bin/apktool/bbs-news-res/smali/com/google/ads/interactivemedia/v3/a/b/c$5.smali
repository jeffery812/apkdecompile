.class final Lcom/google/ads/interactivemedia/v3/a/b/c$5;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/b/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/b/h;
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
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/h;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/a/b/c;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/c;Lcom/google/ads/interactivemedia/v3/a/h;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/c$5;->c:Lcom/google/ads/interactivemedia/v3/a/b/c;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/b/c$5;->a:Lcom/google/ads/interactivemedia/v3/a/h;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/b/c$5;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/c$5;->a:Lcom/google/ads/interactivemedia/v3/a/h;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/c$5;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
