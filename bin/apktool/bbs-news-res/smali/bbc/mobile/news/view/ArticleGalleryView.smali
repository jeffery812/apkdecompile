.class public Lbbc/mobile/news/view/ArticleGalleryView;
.super Lbbc/mobile/news/view/GalleryView;
.source "ArticleGalleryView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lbbc/mobile/news/view/ArticleGalleryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/ArticleGalleryView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/view/GalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method
