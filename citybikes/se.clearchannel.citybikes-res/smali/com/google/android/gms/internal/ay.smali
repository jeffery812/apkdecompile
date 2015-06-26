.class public final Lcom/google/android/gms/internal/ay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ay$a;
    }
.end annotation


# instance fields
.field public final ga:I

.field public final gb:Lcom/google/android/gms/internal/at;

.field public final gc:Lcom/google/android/gms/internal/bc;

.field public final gd:Ljava/lang/String;

.field public final ge:Lcom/google/android/gms/internal/aw;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ay;-><init>(Lcom/google/android/gms/internal/at;Lcom/google/android/gms/internal/bc;Ljava/lang/String;Lcom/google/android/gms/internal/aw;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/at;Lcom/google/android/gms/internal/bc;Ljava/lang/String;Lcom/google/android/gms/internal/aw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ay;->gb:Lcom/google/android/gms/internal/at;

    iput-object p2, p0, Lcom/google/android/gms/internal/ay;->gc:Lcom/google/android/gms/internal/bc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ay;->gd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ay;->ge:Lcom/google/android/gms/internal/aw;

    iput p5, p0, Lcom/google/android/gms/internal/ay;->ga:I

    return-void
.end method
