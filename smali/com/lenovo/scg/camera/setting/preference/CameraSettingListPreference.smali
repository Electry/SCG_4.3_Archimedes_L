.class public Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
.super Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
.source "CameraSettingListPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPreference"

.field public static threshold:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDefaultValues:[Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mKey:Ljava/lang/String;

.field private mLabels:[Ljava/lang/CharSequence;

.field private mLoaded:Z

.field private mValue:Ljava/lang/String;

.field public ratioThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    const v0, 0x1e8480

    sput v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->threshold:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mLoaded:Z

    .line 367
    const/16 v3, 0x32

    iput v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->ratioThreshold:I

    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mContext:Landroid/content/Context;

    .line 63
    sget-object v3, Lcom/lenovo/scg/R$styleable;->CameraSettingListPreference:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mKey:Ljava/lang/String;

    .line 72
    const/4 v1, 0x1

    .line 73
    .local v1, "attrDefaultValue":I
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 74
    .local v2, "tv":Landroid/util/TypedValue;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v4, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 81
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 82
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setLabels([Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void

    .line 77
    :cond_0
    new-array v3, v4, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 78
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_0
.end method

.method private findSupportedDefaultValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 128
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .end local v1    # "j":I
    :goto_2
    return-object v2

    .line 128
    .restart local v1    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "j":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public Bubblesort(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 332
    const/4 v4, 0x0

    .line 333
    .local v4, "temp":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 335
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 336
    const-string v6, "Bubblesort"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 340
    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-le v0, v2, :cond_2

    .line 341
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->isPositiveSequence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "temp":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 343
    .restart local v4    # "temp":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 339
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 348
    :cond_3
    const-string v5, "16x9"

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    const-string v5, "16x9"

    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 351
    :cond_4
    const-string v5, "4x3"

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 352
    const-string v5, "4x3"

    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    :cond_5
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "developer_setting_full_preview_size_key"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 357
    .local v1, "isDeveloper":Z
    if-nez v1, :cond_6

    .line 358
    const-string v5, "16x9"

    invoke-interface {p1, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 359
    const/4 v5, 0x1

    const-string v6, "4x3"

    invoke-interface {p1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 362
    :cond_6
    return-object p1
.end method

.method public BubblesortForPreview(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 313
    .local v3, "temp":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 315
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 316
    const-string v5, "BubblesortForPreview"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 320
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-le v0, v1, :cond_2

    .line 321
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->isPositiveSequence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "temp":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 323
    .restart local v3    # "temp":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 319
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    :cond_3
    return-object p1
.end method

.method public filterDuplicated()V
    .locals 6

    .prologue
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 214
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 220
    .local v4, "size":I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 221
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 222
    return-void
.end method

.method public filterUnsupported(Ljava/util/List;)V
    .locals 6
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
    .line 197
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 200
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 201
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 206
    .local v4, "size":I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 207
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 208
    return-void
.end method

.method public filterUnsupportedPictureSize(Ljava/util/List;)V
    .locals 9
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
    .line 264
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v4, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 268
    .local v0, "Len":I
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->Bubblesort(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 270
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 271
    const-string v8, "ListPreference"

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 273
    :cond_0
    const/4 v2, 0x0

    .line 274
    .local v2, "entries_W":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mContext:Landroid/content/Context;

    const v8, 0x7f0f05f1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "entries_W_temp":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 277
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->isStandardPictureSize(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 275
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 278
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->isStandard16_9PictureSize_5_3(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 279
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    :goto_3
    const/16 v7, 0x78

    const/16 v8, 0x3a

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 281
    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entries_W":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "entries_W":Ljava/lang/String;
    goto :goto_3

    .line 289
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 290
    .local v6, "size":I
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 291
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 292
    return-void
.end method

.method public filterUnsupportedPreviewSize(Ljava/util/List;)V
    .locals 9
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
    .line 225
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v4, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 229
    .local v0, "Len":I
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->BubblesortForPreview(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 231
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 232
    const-string v8, "ListPreference"

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 234
    :cond_0
    const/4 v2, 0x0

    .line 235
    .local v2, "entries_W":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mContext:Landroid/content/Context;

    const v8, 0x7f0f05f1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "entries_W_temp":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 237
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->isStandardPictureSize(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 236
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 240
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->isStandard16_9PictureSize_5_3(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    :goto_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 243
    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entries_W":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "entries_W":Ljava/lang/String;
    goto :goto_3

    .line 251
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 252
    .local v6, "size":I
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 253
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 254
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 151
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/lenovo/scg/camera/CameraUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 150
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findValueOfIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "valueString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "index":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "mEntry":Ljava/lang/String;
    return-object v1
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mLabels:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mLabels:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mLoaded:Z

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getCameraGlobSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mValue:Ljava/lang/String;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mLoaded:Z

    .line 120
    :cond_0
    const-string v0, "getValue()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isPositiveSequence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "last"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 295
    const-string/jumbo v10, "x"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "first_nums":[Ljava/lang/String;
    array-length v10, v1

    if-ge v10, v11, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v8

    .line 297
    :cond_1
    aget-object v10, v1, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 298
    .local v3, "first_w":I
    aget-object v10, v1, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    .local v0, "first_h":I
    mul-int v10, v3, v0

    div-int/lit16 v10, v10, 0x3e8

    int-to-float v2, v10

    .line 301
    .local v2, "first_size":F
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "last_nums":[Ljava/lang/String;
    array-length v10, v5

    if-lt v10, v11, :cond_0

    .line 303
    aget-object v10, v5, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 304
    .local v7, "last_w":I
    aget-object v10, v5, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 305
    .local v4, "last_h":I
    mul-int v10, v7, v4

    div-int/lit16 v10, v10, 0x3e8

    int-to-float v6, v10

    .line 307
    .local v6, "last_size":F
    cmpl-float v10, v2, v6

    if-gtz v10, :cond_0

    move v8, v9

    goto :goto_0
.end method

.method public isStandard16_9PictureSize_5_3(Ljava/lang/String;)Z
    .locals 10
    .param p1, "candidate"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 396
    const/16 v8, 0x78

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 397
    .local v1, "index":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v7

    .line 398
    :cond_1
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 399
    .local v6, "width":I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 400
    .local v0, "height":I
    mul-int/lit16 v8, v6, 0x3e8

    div-int v2, v8, v0

    .line 401
    .local v2, "ratio":I
    sget v8, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit16 v8, v8, 0x3e8

    sget v9, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int v3, v8, v9

    .line 402
    .local v3, "screenRatio":I
    const/16 v4, 0x6f1

    .line 403
    .local v4, "standard16_9":I
    const/16 v5, 0x682

    .line 405
    .local v5, "standard5_3":I
    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_2

    iget v8, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->ratioThreshold:I

    sub-int v8, v3, v8

    if-lt v2, v8, :cond_0

    iget v8, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->ratioThreshold:I

    add-int/2addr v8, v3

    if-gt v2, v8, :cond_0

    .line 406
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public isStandardPictureSize(Ljava/lang/String;)Z
    .locals 13
    .param p1, "candidate"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 370
    const/16 v11, 0x78

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 371
    .local v1, "index":I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v9

    .line 372
    :cond_1
    invoke-virtual {p1, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 373
    .local v8, "width":I
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 374
    .local v0, "height":I
    mul-int/lit16 v11, v8, 0x3e8

    div-int v2, v11, v0

    .line 375
    .local v2, "ratio":I
    sget v11, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit16 v11, v11, 0x3e8

    sget v12, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int v3, v11, v12

    .line 376
    .local v3, "screenRatio":I
    mul-int v4, v0, v8

    .line 377
    .local v4, "size":I
    const/16 v5, 0x6f1

    .line 378
    .local v5, "standard16_9":I
    const/16 v6, 0x535

    .line 379
    .local v6, "standard4_3":I
    const/16 v7, 0x682

    .line 382
    .local v7, "standard5_3":I
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isIntelCPU()Z

    move-result v11

    if-eqz v11, :cond_2

    sget v11, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v11, :cond_2

    mul-int v11, v0, v8

    sget v12, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->threshold:I

    if-lt v11, v12, :cond_0

    .line 384
    :cond_2
    if-eq v2, v5, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_3

    iget v11, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->ratioThreshold:I

    sub-int v11, v3, v11

    if-lt v2, v11, :cond_4

    iget v11, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->ratioThreshold:I

    add-int/2addr v11, v3

    if-gt v2, v11, :cond_4

    :cond_3
    move v9, v10

    .line 386
    goto :goto_0

    .line 389
    :cond_4
    const-string v11, "1x1"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v9, v10

    .line 390
    goto :goto_0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 412
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preference key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 414
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entryValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method protected putValue2SharedPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getCameraGlobSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method

.method public reloadValue()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mLoaded:Z

    .line 194
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 104
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1    # "entries":[Ljava/lang/CharSequence;
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 105
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    .line 108
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1    # "values":[Ljava/lang/CharSequence;
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method public setLabels([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1    # "labels":[Ljava/lang/CharSequence;
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mLabels:[Ljava/lang/CharSequence;

    .line 113
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mValue:Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->putValue2SharedPreference(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setValue(Ljava/lang/String;)V

    .line 147
    return-void
.end method
