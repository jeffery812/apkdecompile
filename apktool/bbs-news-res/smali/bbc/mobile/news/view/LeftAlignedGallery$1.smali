.class Lbbc/mobile/news/view/LeftAlignedGallery$1;
.super Ljava/lang/Object;
.source "LeftAlignedGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/LeftAlignedGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/LeftAlignedGallery;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/LeftAlignedGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery$1;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$1;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    const/4 v1, 0x0

    #setter for: Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->access$0(Lbbc/mobile/news/view/LeftAlignedGallery;Z)V

    .line 124
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$1;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->selectionChanged()V

    .line 125
    return-void
.end method
