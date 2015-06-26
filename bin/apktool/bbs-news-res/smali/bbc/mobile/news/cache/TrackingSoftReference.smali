.class public Lbbc/mobile/news/cache/TrackingSoftReference;
.super Ljava/lang/ref/SoftReference;
.source "TrackingSoftReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private trackObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lbbc/mobile/news/cache/TrackingSoftReference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/cache/TrackingSoftReference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lbbc/mobile/news/cache/TrackingSoftReference;,"Lbbc/mobile/news/cache/TrackingSoftReference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 26
    if-nez p1, :cond_0

    .line 28
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null value in TrackingSoftReference : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lbbc/mobile/news/cache/TrackingSoftReference;,"Lbbc/mobile/news/cache/TrackingSoftReference<TT;>;"
    invoke-super {p0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/cache/TrackingSoftReference;->trackObject:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lbbc/mobile/news/cache/TrackingSoftReference;,"Lbbc/mobile/news/cache/TrackingSoftReference<TT;>;"
    invoke-super {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, val:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public setTrackObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "trackObject"

    .prologue
    .line 51
    .local p0, this:Lbbc/mobile/news/cache/TrackingSoftReference;,"Lbbc/mobile/news/cache/TrackingSoftReference<TT;>;"
    iput-object p1, p0, Lbbc/mobile/news/cache/TrackingSoftReference;->trackObject:Ljava/lang/Object;

    .line 52
    return-void
.end method
