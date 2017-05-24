.class final Lcom/lenovo/scg/gallery3d/boxcontrol/Image$1;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
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
        "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .locals 14
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 223
    .local v4, "id":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 224
    .local v6, "index":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 225
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "dataPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 228
    .local v10, "dateTaken":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 230
    .local v13, "rotation":I
    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    move-object v3, v2

    invoke-direct/range {v1 .. v13}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 231
    .local v1, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    # setter for: Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mIselected:Z
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->access$002(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Z)Z

    .line 232
    return-object v1

    .line 231
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 237
    new-array v0, p1, [Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image$1;->newArray(I)[Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    move-result-object v0

    return-object v0
.end method
