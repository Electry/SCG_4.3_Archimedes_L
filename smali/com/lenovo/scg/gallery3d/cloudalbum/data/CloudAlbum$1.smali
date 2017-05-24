.class final Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum$1;
.super Ljava/lang/Object;
.source "CloudAlbum.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 118
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;-><init>()V

    .line 119
    .local v0, "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPosterUri:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumOutsideUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumVersion:J
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->access$402(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;J)J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mSize:J
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->access$502(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;J)J

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPhotosCount:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->access$602(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;I)I

    .line 126
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    new-array v0, p1, [Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum$1;->newArray(I)[Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    move-result-object v0

    return-object v0
.end method
