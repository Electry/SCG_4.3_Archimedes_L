.class public Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutMeteringAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mCurrentName:Ljava/lang/String;

.field private mDrawable:Landroid/content/res/TypedArray;

.field private mDrawableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:[Ljava/lang/String;

.field private mNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameValue:[Ljava/lang/String;

.field private mValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterController"    # Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    .param p3, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const-string v4, "ShortcutMeteringAdapter"

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->TAG:Ljava/lang/String;

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mNameList:Ljava/util/ArrayList;

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mValueList:Ljava/util/ArrayList;

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mDrawableList:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    .line 49
    iput-object p3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mName:[Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mNameValue:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0078

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mDrawable:Landroid/content/res/TypedArray;

    .line 53
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "camera_setting_ce_guang_key"

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0007

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mCurrentName:Ljava/lang/String;

    .line 56
    const-string v4, "ShortcutMeteringAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mCurrentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_QUALCOMM_SUPPORTED_METERING_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "supportValues":Ljava/lang/String;
    const-string v4, "ShortcutMeteringAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "supportValues = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "temp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 64
    const-string v4, "ShortcutMeteringAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "temp[index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    aget-object v4, v3, v1

    const-string/jumbo v5, "spot-metering-adv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v1

    const-string v5, "center-weighted-adv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v1

    const-string/jumbo v5, "spot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mValueList:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mValueList:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 72
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mNameValue:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mNameValue:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mNameList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mDrawableList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mDrawable:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mValueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    const-string v4, "ShortcutMeteringAdapter"

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

    .line 100
    if-nez p2, :cond_0

    .line 101
    const-string v4, "ShortcutMeteringAdapter"

    const-string/jumbo v5, "new"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "item":Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04017c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "item":Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 104
    .restart local v2    # "item":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 105
    const v4, 0x7f100080

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 106
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mDrawableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    const v4, 0x7f1003c3

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    .local v3, "text":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 111
    const v4, 0x7f10057d

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 113
    .local v0, "button":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mCurrentName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    const v4, 0x7f020931

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 119
    :goto_0
    new-instance v4, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter$1;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    move-object p2, v2

    .line 133
    .end local v0    # "button":Landroid/widget/ImageView;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "item":Landroid/widget/RelativeLayout;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    return-object p2

    .line 116
    .restart local v0    # "button":Landroid/widget/ImageView;
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "item":Landroid/widget/RelativeLayout;
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f020930

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
