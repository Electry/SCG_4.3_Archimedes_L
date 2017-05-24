.class final Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto$1;
.super Ljava/lang/Object;
.source "CloudPhoto.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
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
        "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 161
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    .line 162
    .local v0, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoUri:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$402(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsideUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$502(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSmallThumbUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$602(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mBigThumbUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$702(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoDownload:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$802(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSize:J
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->access$902(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;J)J

    .line 172
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 176
    new-array v0, p1, [Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto$1;->newArray(I)[Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-result-object v0

    return-object v0
.end method
