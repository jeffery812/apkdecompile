.class public Lbbc/mobile/news/view/AVGalleryView;
.super Lbbc/mobile/news/view/GalleryView;
.source "AVGalleryView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAVIconView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lbbc/mobile/news/view/AVGalleryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/AVGalleryView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/view/GalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lbbc/mobile/news/view/GalleryView;->onFinishInflate()V

    .line 26
    sget v0, Lbbc/mobile/news/R$id;->avIconView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVGalleryView;->mAVIconView:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method public setArticle(Lbbc/mobile/news/model/Article;Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 2
    .parameter "article"
    .parameter "imageHandler"

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/view/GalleryView;->setArticle(Lbbc/mobile/news/model/Article;Lbbc/mobile/news/feed/ImageHandler;)V

    .line 34
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lbbc/mobile/news/view/AVGalleryView;->mAVIconView:Landroid/widget/ImageView;

    sget v1, Lbbc/mobile/news/R$drawable;->icon_playvideo_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/AVGalleryView;->mAVIconView:Landroid/widget/ImageView;

    sget v1, Lbbc/mobile/news/R$drawable;->icon_playaudio_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
