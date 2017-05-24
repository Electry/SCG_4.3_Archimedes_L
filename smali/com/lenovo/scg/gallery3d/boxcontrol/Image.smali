.class public Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
.super Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mExif:Landroid/media/ExifInterface;

.field private mIselected:Z

.field private mNotCanBeSelected:Z

.field private mPosition:I

.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->THUMB_PROJECTION:[Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image$1;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 1
    .param p1, "container"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "id"    # J
    .param p5, "index"    # I
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "dataPath"    # Ljava/lang/String;
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "dateTaken"    # J
    .param p11, "title"    # Ljava/lang/String;
    .param p12, "rotation"    # I

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p11}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mIselected:Z

    .line 43
    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mPosition:I

    .line 50
    iput p12, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mRotation:I

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mIselected:Z

    return p1
.end method

.method private loadExifData()V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mDataPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mExif:Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "BaseImage"

    const-string v2, "cannot read exif"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveExifData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 145
    :cond_0
    return-void
.end method

.method private setExifRotation(I)V
    .locals 5
    .param p1, "degrees"    # I

    .prologue
    .line 149
    :try_start_0
    rem-int/lit16 p1, p1, 0x168

    .line 150
    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    .line 152
    :cond_0
    const/4 v1, 0x1

    .line 153
    .local v1, "orientation":I
    sparse-switch p1, :sswitch_data_0

    .line 168
    :goto_0
    const-string v2, "Orientation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->saveExifData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "orientation":I
    :goto_1
    return-void

    .line 155
    .restart local v1    # "orientation":I
    :sswitch_0
    const/4 v1, 0x1

    .line 156
    goto :goto_0

    .line 158
    :sswitch_1
    const/4 v1, 0x6

    .line 159
    goto :goto_0

    .line 161
    :sswitch_2
    const/4 v1, 0x3

    .line 162
    goto :goto_0

    .line 164
    :sswitch_3
    const/16 v1, 0x8

    goto :goto_0

    .line 170
    .end local v1    # "orientation":I
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "BaseImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to save exif data with new orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mRotation:I

    return v0
.end method

.method public getmPosition()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mPosition:I

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isNotCanBeSelected()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mNotCanBeSelected:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "image/jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mIselected:Z

    return v0
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mExif:Landroid/media/ExifInterface;

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->loadExifData()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 2
    .param p1, "degrees"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDegreesRotated()I

    move-result v1

    add-int/2addr v1, p1

    rem-int/lit16 v0, v1, 0x168

    .line 98
    .local v0, "newDegrees":I
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setExifRotation(I)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setDegreesRotated(I)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method protected setDegreesRotated(I)V
    .locals 4
    .param p1, "degrees"    # I

    .prologue
    const/4 v3, 0x0

    .line 176
    iget v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mRotation:I

    if-ne v1, p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mRotation:I

    .line 178
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "orientation"

    iget v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNotCanBeSelected(Z)V
    .locals 0
    .param p1, "has"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mNotCanBeSelected:Z

    .line 126
    return-void
.end method

.method public setmIselected(Z)V
    .locals 0
    .param p1, "mIselected"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mIselected:Z

    .line 192
    return-void
.end method

.method public setmPosition(I)V
    .locals 0
    .param p1, "mPosition"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mPosition:I

    .line 59
    return-void
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "rotateAsNeeded"    # Z

    .prologue
    const/16 v9, 0xf0

    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 108
    .local v8, "scaleBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 112
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mId:J

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 114
    invoke-static {v7, v9, v9}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 116
    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDegreesRotated()I

    move-result v0

    invoke-static {v8, v0}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 120
    :cond_0
    return-object v8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDateTaken()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mIselected:Z

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
