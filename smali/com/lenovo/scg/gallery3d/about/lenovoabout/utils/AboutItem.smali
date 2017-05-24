.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;
.super Ljava/lang/Object;
.source "AboutItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private bAutoUpdate:Z

.field private bCmcc:Z

.field private bRowVersion:Z

.field private mBBS:Ljava/lang/String;

.field private mChanelValue:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mQQGroupNum:Ljava/lang/String;

.field private mResIcon:I

.field private mSinaName:Ljava/lang/String;

.field private mSinaUrl:Ljava/lang/String;

.field private mWeixin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem$1;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "all"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    .line 8
    const-string v0, "@\u8054\u60f3\u901a\u8baf\u5f55"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    .line 9
    const-string v0, "http://e.weibo.com/ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    .line 10
    const-string v0, "292752313"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    .line 11
    const-string v0, "ideafriend@lenovo.com"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    .line 12
    const-string v0, "ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mWeixin:Ljava/lang/String;

    .line 13
    const-string v0, "http://e.weibo.com/ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mBBS:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    .line 16
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    .line 17
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    .line 18
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mWeixin:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mBBS:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    .line 141
    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    :cond_1
    move v0, v2

    .line 139
    goto :goto_1

    :cond_2
    move v1, v2

    .line 140
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 2
    .param p1, "chanelValue"    # Ljava/lang/String;
    .param p2, "sinaWeiboName"    # Ljava/lang/String;
    .param p3, "sinaWeiboUrl"    # Ljava/lang/String;
    .param p4, "qqGroupNum"    # Ljava/lang/String;
    .param p5, "emailAddress"    # Ljava/lang/String;
    .param p6, "resIcon"    # I
    .param p7, "isAutoUpdate"    # Z
    .param p8, "isRowVersion"    # Z

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "all"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    .line 8
    const-string v0, "@\u8054\u60f3\u901a\u8baf\u5f55"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    .line 9
    const-string v0, "http://e.weibo.com/ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    .line 10
    const-string v0, "292752313"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    .line 11
    const-string v0, "ideafriend@lenovo.com"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    .line 12
    const-string v0, "ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mWeixin:Ljava/lang/String;

    .line 13
    const-string v0, "http://e.weibo.com/ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mBBS:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    .line 17
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    .line 18
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    .line 28
    iput p6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    .line 29
    iput-boolean p7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    .line 30
    iput-boolean p8, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 2
    .param p1, "chanelValue"    # Ljava/lang/String;
    .param p2, "sinaWeiboName"    # Ljava/lang/String;
    .param p3, "sinaWeiboUrl"    # Ljava/lang/String;
    .param p4, "qqGroupNum"    # Ljava/lang/String;
    .param p5, "emailAddress"    # Ljava/lang/String;
    .param p6, "resIcon"    # I
    .param p7, "isAutoUpdate"    # Z
    .param p8, "isRowVersion"    # Z
    .param p9, "isCmcc"    # Z

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "all"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    .line 8
    const-string v0, "@\u8054\u60f3\u901a\u8baf\u5f55"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    .line 9
    const-string v0, "http://e.weibo.com/ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    .line 10
    const-string v0, "292752313"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    .line 11
    const-string v0, "ideafriend@lenovo.com"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    .line 12
    const-string v0, "ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mWeixin:Ljava/lang/String;

    .line 13
    const-string v0, "http://e.weibo.com/ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mBBS:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    .line 17
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    .line 18
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    .line 41
    iput p6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    .line 42
    iput-boolean p7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    .line 43
    iput-boolean p8, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    .line 44
    iput-boolean p9, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 2
    .param p1, "chanelValue"    # Ljava/lang/String;
    .param p2, "sinaWeiboName"    # Ljava/lang/String;
    .param p3, "sinaWeiboUrl"    # Ljava/lang/String;
    .param p4, "qqGroupNum"    # Ljava/lang/String;
    .param p5, "emailAddress"    # Ljava/lang/String;
    .param p6, "weixin"    # Ljava/lang/String;
    .param p7, "bbs"    # Ljava/lang/String;
    .param p8, "resIcon"    # I
    .param p9, "isAutoUpdate"    # Z
    .param p10, "isRowVersion"    # Z
    .param p11, "isCmcc"    # Z

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "all"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    .line 8
    const-string v0, "@\u8054\u60f3\u901a\u8baf\u5f55"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    .line 9
    const-string v0, "http://e.weibo.com/ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    .line 10
    const-string v0, "292752313"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    .line 11
    const-string v0, "ideafriend@lenovo.com"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    .line 12
    const-string v0, "ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mWeixin:Ljava/lang/String;

    .line 13
    const-string v0, "http://e.weibo.com/ideafriend"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mBBS:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    .line 17
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    .line 18
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mWeixin:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mBBS:Ljava/lang/String;

    .line 57
    iput p8, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    .line 58
    iput-boolean p9, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    .line 59
    iput-boolean p10, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    .line 60
    iput-boolean p11, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    .line 61
    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoUpdate()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    return v0
.end method

.method public getBBS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mBBS:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcc()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    return v0
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    return-object v0
.end method

.method public getQQGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    return-object v0
.end method

.method public getRowVersion()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    return v0
.end method

.method public getWeibo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeiboURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWeixin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mWeixin:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mChanelValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mSinaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mQQGroupNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mWeixin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mBBS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->mResIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bAutoUpdate:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bRowVersion:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->bCmcc:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    :cond_1
    move v0, v2

    .line 125
    goto :goto_1

    :cond_2
    move v1, v2

    .line 126
    goto :goto_2
.end method
