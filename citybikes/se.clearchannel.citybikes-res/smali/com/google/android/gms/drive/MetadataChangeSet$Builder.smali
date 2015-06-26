.class public Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataChangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final qV:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->cX()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->qV:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 3

    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iget-object v1, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->qV:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/MetadataChangeSet$1;)V

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 2
    .parameter "mimeType"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->qV:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fh;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setStarred(Z)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 3
    .parameter "starred"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->qV:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fh;->STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 2
    .parameter "title"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->qV:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fh;->TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method
