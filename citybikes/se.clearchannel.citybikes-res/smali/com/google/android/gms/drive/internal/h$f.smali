.class Lcom/google/android/gms/drive/internal/h$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private final jY:Lcom/google/android/gms/common/api/Status;

.field private final rf:Lcom/google/android/gms/drive/MetadataBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/h$f;->jY:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/h$f;->rf:Lcom/google/android/gms/drive/MetadataBuffer;

    return-void
.end method


# virtual methods
.method public getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/h$f;->rf:Lcom/google/android/gms/drive/MetadataBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/h$f;->jY:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
