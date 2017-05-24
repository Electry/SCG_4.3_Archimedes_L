.class public Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
.super Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
.source "CameraSettingIconListPreference.java"


# instance fields
.field private mIconIds:[I

.field private mImageIds:[I

.field private mLargeIconIds:[I

.field mLocalSizeStrings:[Ljava/lang/String;

.field private mSingleIconId:I

.field private mUseSingleIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "16x9"

    aput-object v3, v2, v5

    const-string v3, "4x3"

    aput-object v3, v2, v6

    const-string v3, "4160x3120"

    aput-object v3, v2, v7

    const-string v3, "4160x2340"

    aput-object v3, v2, v8

    const-string v3, "4000x3000"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "3200x2400"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "2592x1944"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "2048x1536"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "1920x1080"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "1600x1200"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "1280x768"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "1280x720"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "1024x768"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "800x600"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "800x480"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "720x480"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "640x480"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "352x288"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "320x240"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "176x144"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLocalSizeStrings:[Ljava/lang/String;

    .line 47
    sget-object v2, Lcom/lenovo/scg/R$styleable;->CameraSettingIconListPreference:[I

    invoke-virtual {p1, p2, v2, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mSingleIconId:I

    .line 50
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    .line 51
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    .line 52
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconsRes"    # I

    .prologue
    .line 89
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 97
    :goto_0
    return-object v2

    .line 90
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 92
    .local v3, "n":I
    new-array v2, v3, [I

    .line 93
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/lenovo/scg/camera/IntArray;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/IntArray;-><init>()V

    .line 104
    .local v2, "iconIds":Lcom/lenovo/scg/camera/IntArray;
    new-instance v4, Lcom/lenovo/scg/camera/IntArray;

    invoke-direct {v4}, Lcom/lenovo/scg/camera/IntArray;-><init>()V

    .line 105
    .local v4, "largeIconIds":Lcom/lenovo/scg/camera/IntArray;
    new-instance v3, Lcom/lenovo/scg/camera/IntArray;

    invoke-direct {v3}, Lcom/lenovo/scg/camera/IntArray;-><init>()V

    .line 107
    .local v3, "imageIds":Lcom/lenovo/scg/camera/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v5, v0

    .local v5, "len":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 108
    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 109
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    .line 110
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    .line 111
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    .line 107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    .line 115
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_5

    .line 116
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    .line 118
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    .line 119
    :cond_6
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 120
    return-void
.end method

.method public filterUnsupportedPictureSize(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->filterUnsupportedPictureSize(Ljava/util/List;)V

    .line 148
    new-instance v2, Lcom/lenovo/scg/camera/IntArray;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/IntArray;-><init>()V

    .line 149
    .local v2, "iconIds":Lcom/lenovo/scg/camera/IntArray;
    new-instance v4, Lcom/lenovo/scg/camera/IntArray;

    invoke-direct {v4}, Lcom/lenovo/scg/camera/IntArray;-><init>()V

    .line 150
    .local v4, "largeIconIds":Lcom/lenovo/scg/camera/IntArray;
    new-instance v3, Lcom/lenovo/scg/camera/IntArray;

    invoke-direct {v3}, Lcom/lenovo/scg/camera/IntArray;-><init>()V

    .line 151
    .local v3, "imageIds":Lcom/lenovo/scg/camera/IntArray;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 152
    .local v0, "Len":I
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->Bubblesort(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 155
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLocalPicSizeID(Ljava/lang/String;)I

    move-result v5

    .line 157
    .local v5, "pos":I
    const-string v6, "filterUnsupportedPictureSizeERROR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIconIds.length == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   pos === "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v6, -0x1

    if-eq v6, v5, :cond_3

    .line 160
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    .line 161
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    aget v6, v6, v5

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    .line 154
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    aget v6, v6, v9

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    .line 165
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    aget v6, v6, v9

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    .line 166
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    aget v6, v6, v9

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/IntArray;->add(I)V

    goto :goto_1

    .line 169
    .end local v5    # "pos":I
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    .line 170
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_8

    .line 171
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    .line 173
    :cond_8
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    .line 175
    :cond_9
    return-void
.end method

.method public getIconIds()[I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getIconPosition(Ljava/lang/String;)I
    .locals 3
    .param p1, "current"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 123
    const-string v2, "11"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const/4 v0, 0x0

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    const-string v2, "10"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v2, :cond_2

    .line 127
    const/4 v0, 0x2

    goto :goto_0

    .line 128
    :cond_2
    const-string v2, "10"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-eq v2, v1, :cond_0

    .line 131
    :cond_3
    const-string v2, "9"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public getImageIds()[I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mImageIds:[I

    return-object v0
.end method

.method public getLargeIconIds()[I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    return-object v0
.end method

.method public getLocalPicSizeID(Ljava/lang/String;)I
    .locals 3
    .param p1, "current"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    const/4 v1, -0x1

    .line 214
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLocalSizeStrings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLocalSizeStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 220
    goto :goto_0
.end method

.method public getSingleIcon()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mSingleIconId:I

    return v0
.end method

.method public getUseSingleIcon()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mUseSingleIcon:Z

    return v0
.end method

.method public setIconIds([I)V
    .locals 0
    .param p1, "iconIds"    # [I

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mIconIds:[I

    .line 78
    return-void
.end method

.method public setLargeIconIds([I)V
    .locals 0
    .param p1, "largeIconIds"    # [I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mLargeIconIds:[I

    .line 82
    return-void
.end method

.method public setUseSingleIcon(Z)V
    .locals 0
    .param p1, "useSingle"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->mUseSingleIcon:Z

    .line 86
    return-void
.end method
