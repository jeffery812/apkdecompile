.class public Lcom/google/android/gms/internal/hd$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final Bc:Ljava/lang/String;

.field private Bd:Ljava/lang/String;

.field private Be:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hd$a$a;->Bc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/hd$a$a;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lcom/google/android/gms/internal/hd$a$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hd$a$a;->Bd:Ljava/lang/String;

    return-object p0
.end method

.method public bd(I)Lcom/google/android/gms/internal/hd$a$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/hd$a$a;->Be:I

    return-object p0
.end method

.method public ek()Lcom/google/android/gms/internal/hd$a;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/hd$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a$a;->Bc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/hd$a$a;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/hd$a$a;->Bd:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/hd$a$a;->Be:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hd$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
