.class public Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutVQualityAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

.field private mAllValues:[Ljava/lang/String;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:Ljava/lang/String;

.field private mDrawable:Landroid/content/res/TypedArray;

.field private mName:[Ljava/lang/String;

.field private mSupportIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterController"    # Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    .param p3, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const-string v0, "ShortcutVQualityAdapter"

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->TAG:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    .line 46
    iput-object p3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mName:[Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mDrawable:Landroid/content/res/TypedArray;

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_video_quality_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mCurrentValue:Ljava/lang/String;

    .line 52
    const-string v0, "ShortcutVQualityAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->filterUnsupport()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAllValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mSupportIndices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    return-object v0
.end method

.method private filterUnsupport()V
    .locals 6

    .prologue
    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mSupportIndices:Ljava/util/ArrayList;

    .line 59
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getSupportVideoQuality(I)Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, "supportKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAllValues:[Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAllValues:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "support":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 65
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAllValues:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_1
    if-eqz v2, :cond_2

    .line 69
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mSupportIndices:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    .end local v2    # "support":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mSupportIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 91
    const-string v4, "ShortcutVQualityAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getview, position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez p2, :cond_0

    .line 93
    const-string v4, "ShortcutVQualityAdapter"

    const-string/jumbo v5, "new"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "item":Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04017c

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "item":Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 97
    .restart local v2    # "item":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 98
    const v4, 0x7f100080

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 99
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mDrawable:Landroid/content/res/TypedArray;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mSupportIndices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    const v4, 0x7f1003c3

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 101
    .local v3, "text":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mSupportIndices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v4, 0x7f10057d

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "button":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mCurrentValue:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAllValues:[Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mSupportIndices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const v4, 0x7f020931

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 111
    :goto_0
    new-instance v4, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter$1;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    move-object p2, v2

    .line 126
    .end local v0    # "button":Landroid/widget/ImageView;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "item":Landroid/widget/RelativeLayout;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    return-object p2

    .line 108
    .restart local v0    # "button":Landroid/widget/ImageView;
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "item":Landroid/widget/RelativeLayout;
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f020930

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
