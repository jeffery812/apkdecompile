.class public final Lbbc/mobile/news/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field public static final FAST:I = 0x0

.field public static final FORCE:I = 0x1

.field public static final FRESH:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1
    .parameter "readStrategy"

    .prologue
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 17
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 12
    :pswitch_0
    const-string v0, "FAST"

    goto :goto_0

    .line 13
    :pswitch_1
    const-string v0, "FORCE"

    goto :goto_0

    .line 14
    :pswitch_2
    const-string v0, "FRESH"

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
