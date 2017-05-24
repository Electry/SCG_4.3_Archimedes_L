.class public Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutAntibandingAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mCurrentName:Ljava/lang/String;

.field private mDrawable:Landroid/content/res/TypedArray;

.field private mName:[Ljava/lang/String;

.field private mNameValue:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterController"    # Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    .param p3, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    const-string v0, "ShortcutAntibandingAdapter"

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    .line 39
    iput-object p3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mName:[Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mNameValue:[Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mDrawable:Landroid/content/res/TypedArray;

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_pin_shan_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0019

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mCurrentName:Ljava/lang/String;

    .line 46
    const-string v0, "ShortcutAntibandingAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mCurrentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mNameValue:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mName:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    const-string v4, "ShortcutAntibandingAdapter"

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

    .line 67
    if-nez p2, :cond_0

    .line 68
    const-string v4, "ShortcutAntibandingAdapter"

    const-string/jumbo v5, "new"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "item":Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04017c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "item":Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 71
    .restart local v2    # "item":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 72
    const v4, 0x7f100080

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 73
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    const v4, 0x7f1003c3

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    .local v3, "text":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v4, 0x7f10057d

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    .local v0, "button":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mCurrentName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mNameValue:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    const v4, 0x7f020931

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 85
    :goto_0
    new-instance v4, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter$1;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    move-object p2, v2

    .line 99
    .end local v0    # "button":Landroid/widget/ImageView;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "item":Landroid/widget/RelativeLayout;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    return-object p2

    .line 82
    .restart local v0    # "button":Landroid/widget/ImageView;
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "item":Landroid/widget/RelativeLayout;
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f020930

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
