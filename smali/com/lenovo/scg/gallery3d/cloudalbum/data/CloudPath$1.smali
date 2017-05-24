.class final Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath$1;
.super Ljava/lang/Object;
.source "CloudPath.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
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
        "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 51
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;-><init>()V

    .line 52
    .local v0, "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mSize:J
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;J)J

    .line 55
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath$1;->newArray(I)[Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    move-result-object v0

    return-object v0
.end method
