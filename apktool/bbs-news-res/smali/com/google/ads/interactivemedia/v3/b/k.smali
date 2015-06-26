.class public final Lcom/google/ads/interactivemedia/v3/b/k;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/k;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/k;->b:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/k;->a:I

    return v0
.end method

.method public final setContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/k;->c:Landroid/view/ViewGroup;

    .line 55
    return-void
.end method

.method public final setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/b/k;->a:I

    .line 40
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/b/k;->b:I

    .line 41
    return-void
.end method
