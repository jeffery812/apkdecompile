.class public Lcom/google/android/gms/internal/pb$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/pb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final avQ:Lcom/google/android/gms/internal/pc;

.field public final avR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pc;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/pc;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pb$a;->avQ:Lcom/google/android/gms/internal/pc;

    iput-object p2, p0, Lcom/google/android/gms/internal/pb$a;->avR:Ljava/util/List;

    return-void
.end method
