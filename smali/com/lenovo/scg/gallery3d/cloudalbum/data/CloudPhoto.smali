.class public Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
.super Ljava/lang/Object;
.source "CloudPhoto.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBigThumbUrl:Ljava/lang/String;

.field private mIsSelect:Z

.field private mOutsidePhotoInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

.field private mOutsideUrl:Ljava/lang/String;

.field private mParentId:Ljava/lang/String;

.field private mParentName:Ljava/lang/String;

.field private mPhotoDownload:I

.field private mPhotoHeight:I

.field private mPhotoId:Ljava/lang/String;

.field private mPhotoName:Ljava/lang/String;

.field private mPhotoUri:Ljava/lang/String;

.field private mPhotoWidth:I

.field private mSize:J

.field private mSmallThumbUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto$1;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoName:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoUri:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsideUrl:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSmallThumbUrl:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mBigThumbUrl:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoWidth:I

    .line 37
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoHeight:I

    .line 39
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoDownload:I

    .line 41
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mIsSelect:Z

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsidePhotoInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSize:J

    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsideUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSmallThumbUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mBigThumbUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoDownload:I

    return p1
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSize:J

    return-wide p1
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSize:J

    return-wide v0
.end method

.method public getmBigThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mBigThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmIsSelect()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mIsSelect:Z

    return v0
.end method

.method public getmOutsidePhotoInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsidePhotoInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    return-object v0
.end method

.method public getmOutsideUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsideUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getmParentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhotoDownload()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoDownload:I

    return v0
.end method

.method public getmPhotoHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoHeight:I

    return v0
.end method

.method public getmPhotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhotoWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoWidth:I

    return v0
.end method

.method public getmSmallThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSmallThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSize:J

    .line 153
    return-void
.end method

.method public setmBigThumbUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBigThumbUrl"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mBigThumbUrl:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setmIsSelect(Z)V
    .locals 0
    .param p1, "mIsSelect"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mIsSelect:Z

    .line 113
    return-void
.end method

.method public setmOutsidePhotoInfo(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;)V
    .locals 0
    .param p1, "mOutsidePhotoInfo"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsidePhotoInfo:Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    .line 205
    return-void
.end method

.method public setmOutsideUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOutsideUrl"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsideUrl:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setmParentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParentId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setmParentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParentName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setmPhotoDownload(I)V
    .locals 0
    .param p1, "download"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoDownload:I

    .line 145
    return-void
.end method

.method public setmPhotoHeight(I)V
    .locals 0
    .param p1, "mPhotoHeight"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoHeight:I

    .line 93
    return-void
.end method

.method public setmPhotoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPhotoId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setmPhotoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPhotoName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setmPhotoUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoUri"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoUri:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setmPhotoWidth(I)V
    .locals 0
    .param p1, "mPhotoWidth"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoWidth:I

    .line 85
    return-void
.end method

.method public setmSmallThumbUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSmallThumbUrl"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSmallThumbUrl:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mParentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mOutsideUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSmallThumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mBigThumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mPhotoDownload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    return-void
.end method
