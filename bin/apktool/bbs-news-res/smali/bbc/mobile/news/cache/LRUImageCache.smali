.class public Lbbc/mobile/news/cache/LRUImageCache;
.super Lbbc/mobile/news/cache/LRUCache;
.source "LRUImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbc/mobile/news/cache/LRUCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static DEFAULT_MAX_SIZE:I = 0x0

.field private static final serialVersionUID:J = -0x5b75c5fa124e1f83L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0xa

    sput v0, Lbbc/mobile/news/cache/LRUImageCache;->DEFAULT_MAX_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    sget v0, Lbbc/mobile/news/cache/LRUImageCache;->DEFAULT_MAX_SIZE:I

    invoke-direct {p0, v0}, Lbbc/mobile/news/cache/LRUImageCache;-><init>(I)V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxEntries"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lbbc/mobile/news/cache/LRUCache;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lbbc/mobile/news/cache/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 31
    .local v0, outB:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/cache/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 24
    .local v0, outB:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lbbc/mobile/news/cache/LRUImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
