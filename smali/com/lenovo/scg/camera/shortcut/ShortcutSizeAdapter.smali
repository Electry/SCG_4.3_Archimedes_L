.class public Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutSizeAdapter.java"


# instance fields
.field private final CAPTURE_SIZE_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

.field private mAllValues:[Ljava/lang/String;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:Ljava/lang/String;

.field private mDrawable:Landroid/content/res/TypedArray;

.field private mName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterController"    # Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    .param p3, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const-string v1, "ShortcutSizeAdapter"

    iput-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->TAG:Ljava/lang/String;

    .line 24
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->CAPTURE_SIZE_COUNT:I

    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    .line 43
    iput-object p3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mName:[Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mDrawable:Landroid/content/res/TypedArray;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAllValues:[Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "1x1"

    iput-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCurrentValue:Ljava/lang/String;

    .line 58
    :goto_0
    const-string v1, "ShortcutSizeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_picture_size_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCurrentValue:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAllValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->changeSizeTo1_1()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->changeSizeTo16_9()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->changeSizeTo4_3()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    return-object v0
.end method

.method private changeSizeTo16_9()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_square_pic_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_picture_size_key"

    const-string v2, "16x9"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private changeSizeTo1_1()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_square_pic_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_picture_size_key"

    const-string v2, "4x3"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private changeSizeTo4_3()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_square_pic_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_picture_size_key"

    const-string v2, "4x3"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;->isHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x2

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
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

    .line 81
    const-string v4, "ShortcutSizeAdapter"

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

    .line 82
    if-nez p2, :cond_0

    .line 83
    const-string v4, "ShortcutSizeAdapter"

    const-string/jumbo v5, "new"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "item":Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04017c

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "item":Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 87
    .restart local v2    # "item":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 88
    const v4, 0x7f100080

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 89
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v4, p1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    const v4, 0x7f1003c3

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, "text":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v4, 0x7f10057d

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    .local v0, "button":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mCurrentValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAllValues:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const v4, 0x7f020931

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    :goto_0
    new-instance v4, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    move-object p2, v2

    .line 124
    .end local v0    # "button":Landroid/widget/ImageView;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "item":Landroid/widget/RelativeLayout;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    return-object p2

    .line 98
    .restart local v0    # "button":Landroid/widget/ImageView;
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "item":Landroid/widget/RelativeLayout;
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f020930

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
