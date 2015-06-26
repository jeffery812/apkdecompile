.class final Lcom/google/ads/interactivemedia/v3/b/h$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/h;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/h$a;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/b/h;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/h$a;-><init>(Lcom/google/ads/interactivemedia/v3/b/h;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h$a;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->b(Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/s;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/r$b;->adsManager:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$c;->skip:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/h$a;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/b/h;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 139
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h$a;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->b(Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/s;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/r$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$c;->click:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/h$a;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/b/h;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 149
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h$a;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->b(Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h$a;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/h;->c(Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/a/a;->getClickThruUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Ljava/lang/String;)V

    .line 150
    return-void
.end method
