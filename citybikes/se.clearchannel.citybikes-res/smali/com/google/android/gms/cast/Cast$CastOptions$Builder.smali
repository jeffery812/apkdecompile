.class public final Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast$CastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field kv:Lcom/google/android/gms/cast/CastDevice;

.field kw:Lcom/google/android/gms/cast/Cast$Listener;

.field private kx:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V
    .locals 1
    .parameter "castDevice"
    .parameter "castListener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->kv:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->kw:Lcom/google/android/gms/cast/Cast$Listener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->kx:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/cast/Cast$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->kx:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/Cast$CastOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/Cast$1;)V

    return-object v0
.end method

.method public setDebuggingEnabled()Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->kx:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->kx:I

    return-object p0
.end method
