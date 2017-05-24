.class public Lcom/lenovo/scg/camera/shortcut/ShortcutView;
.super Landroid/widget/RelativeLayout;
.source "ShortcutView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;,
        Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    }
.end annotation


# static fields
.field public static MOVEVIEWISEMPTY:I

.field public static MOVEVIEWISOUTOFALLITEMS:I

.field public static RESET:Ljava/lang/String;

.field public static UPDATE:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bMoveViewAdded:Z

.field private isShortcutBigPanelFadeOutAnimationRunning:Z

.field private isShortcutPanelFadeInAnimationRunning:Z

.field private isShortcutPanelFadeOutAnimationRunning:Z

.field private mArrow:Landroid/widget/ImageView;

.field private mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

.field private mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

.field private mDrawableAndScreenRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;

.field private mGridAdapter:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mHideShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHint1:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mHint2:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mHint3:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mHint4:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mHintArrow:[Landroid/widget/ImageView;

.field private mMoveView:Landroid/widget/ImageView;

.field private mMoveViewRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mOrientation:I

.field private mRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mResetButton:Landroid/widget/ImageButton;

.field private mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

.field private mScreenRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;

.field private mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;

.field private mShortcutBigPanelRect:Landroid/graphics/Rect;

.field private mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mShortcutItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutPanel:Landroid/widget/LinearLayout;

.field private mShortcutPanelFadeInAnimation:Landroid/view/animation/Animation;

.field private mShortcutPanelFadeOutAnimation:Landroid/view/animation/Animation;

.field private mShortcutPanelInner:Landroid/widget/LinearLayout;

.field private mShortcutRect:Landroid/graphics/Rect;

.field public mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

.field private mShortcutViewRect:Landroid/graphics/Rect;

.field private mSmallBg:Landroid/widget/ImageView;

.field private mStatusbar:Landroid/widget/LinearLayout;

.field private mUI:Lcom/lenovo/scg/camera/PhotoUI;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private resetReceiver:Landroid/content/BroadcastReceiver;

.field private settingChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "com.lenovo.scg.camera.UPDATESHORTCUT"

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->UPDATE:Ljava/lang/String;

    .line 60
    const-string v0, "com.lenovo.scg.camera.RESETSHORTCUT"

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->RESET:Ljava/lang/String;

    .line 101
    const/16 v0, -0x64

    sput v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISEMPTY:I

    .line 103
    const/16 v0, -0xc8

    sput v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISOUTOFALLITEMS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const-string v0, "ShortcutView"

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->TAG:Ljava/lang/String;

    .line 97
    new-array v0, v1, [Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 99
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mScreenRectMap:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mRectMap:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mDrawableAndScreenRectMap:Ljava/util/HashMap;

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHideShortcutItemList:Ljava/util/ArrayList;

    .line 1708
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$9;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$9;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->settingChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1718
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$10;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$10;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->resetReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    const-string v0, "ShortcutView"

    const-string v1, "ShortcutView 3:12"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutRect:Landroid/graphics/Rect;

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutViewRect:Landroid/graphics/Rect;

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelRect:Landroid/graphics/Rect;

    .line 213
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initWindowManage()V

    .line 214
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutPanelFadeInAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutBigPanelFadeOutAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideHintArrow()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/shortcut/ShortcutView;IILcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    .param p4, "x4"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->showMoveView(IILcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I

    return v0
.end method

.method static synthetic access$1702(Lcom/lenovo/scg/camera/shortcut/ShortcutView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I

    return p1
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/RotateDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Lcom/lenovo/scg/camera/RotateDialogController;)Lcom/lenovo/scg/camera/RotateDialogController;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/RotateDialogController;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->resetAll()V

    return-void
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutPanelFadeOutAnimationRunning:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mSmallBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHideShortcutItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/function/ProFunctionUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getShortcutItemRect()V

    return-void
.end method

.method private checkAllRect(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1087
    sget v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISOUTOFALLITEMS:I

    .line 1088
    .local v2, "result":I
    const/4 v1, 0x0

    .line 1090
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_1

    .line 1091
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mScreenRectMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rect":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 1092
    .restart local v1    # "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1093
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v2

    move v3, v2

    .line 1110
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_1
    return v3

    .line 1090
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 1099
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1100
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_3

    .line 1098
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1103
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mScreenRectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rect":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 1104
    .restart local v1    # "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1105
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v2

    move v3, v2

    .line 1106
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_1

    .end local v3    # "result":I
    .end local v4    # "v":Landroid/view/View;
    .restart local v2    # "result":I
    :cond_4
    move v3, v2

    .line 1110
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_1
.end method

.method private getLocalPreference()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getShortcutItemRect()V
    .locals 9

    .prologue
    .line 370
    const-string v2, "ShortcutView"

    const-string v3, "getShortcutItemRect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mScreenRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 373
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 375
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 376
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 378
    const-string v2, "ShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mShortcutViewRect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 382
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 384
    .local v1, "rectInScreen":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 385
    const-string v2, "ShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mScreenRectMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "rectInScreen":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 391
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 393
    .restart local v1    # "rectInScreen":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 394
    const-string v2, "ShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v2, "ShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGridView.getChildAt(index) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mScreenRectMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mRectMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 403
    .end local v1    # "rectInScreen":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method private hideHintArrow()V
    .locals 3

    .prologue
    .line 1141
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1144
    :cond_0
    return-void
.end method

.method private hideViewAccordingToId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1114
    const-string v0, "ShortcutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideViewAccordingToId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v0, -0x5

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    add-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    const v1, 0x7f020365

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1120
    :goto_0
    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 4

    .prologue
    const v3, 0x7f050043

    const v2, 0x7f05003e

    .line 697
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v1, 0x7f050031

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 698
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v1, 0x7f050030

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 700
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelFadeOutAnimation:Landroid/view/animation/Animation;

    .line 701
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelFadeInAnimation:Landroid/view/animation/Animation;

    .line 703
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;

    .line 704
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;

    .line 706
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 744
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 781
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 806
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$4;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 823
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 846
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 875
    return-void
.end method

.method private initMoveView()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04017f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveViewRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 973
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveViewRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const v1, 0x7f1008dc

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    .line 974
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    sget v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISEMPTY:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 975
    return-void
.end method

.method private initShortcutItem()V
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 268
    new-instance v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;)V

    .line 269
    .local v1, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    .line 270
    iget-object v3, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iput v0, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->temporaryIndex:I

    .line 272
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setTag(Ljava/lang/Object;)V

    .line 273
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setId(I)V

    .line 274
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 275
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    const/16 v3, 0x1f4

    invoke-static {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;I)V

    .line 280
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->updateAllShortcutDrawable()V

    .line 284
    return-void
.end method

.method private initShortcutPanel()V
    .locals 1

    .prologue
    .line 978
    const v0, 0x7f1008df

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    .line 979
    const v0, 0x7f1008e0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelInner:Landroid/widget/LinearLayout;

    .line 980
    return-void
.end method

.method private initWindowManage()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 983
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowManager:Landroid/view/WindowManager;

    .line 984
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 985
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 986
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 987
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 988
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 989
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 990
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 991
    return-void
.end method

.method private joinString(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1393
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1394
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1395
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private removeMoveView(II)V
    .locals 11
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x5

    const/4 v8, 0x0

    .line 915
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    sget v6, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISEMPTY:I

    if-eq v5, v6, :cond_8

    .line 916
    const-string v5, "ShortcutView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeMoveView id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveViewRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 918
    iput-boolean v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->bMoveViewAdded:Z

    .line 919
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->checkAllRect(II)I

    move-result v3

    .line 920
    .local v3, "matchIndex":I
    const-string v5, "ShortcutView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "matchIndex = : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    sget v5, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISOUTOFALLITEMS:I

    if-ne v3, v5, :cond_1

    .line 946
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 948
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 949
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v5, v5, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
    .end local v0    # "index":I
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    if-eq v3, v5, :cond_0

    .line 924
    const/4 v2, 0x0

    .line 925
    .local v2, "infoSrc":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const/4 v1, 0x0

    .line 927
    .local v1, "infoDst":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    if-lt v5, v9, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    if-gt v5, v10, :cond_2

    .line 928
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "infoSrc":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 933
    .restart local v2    # "infoSrc":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    :goto_2
    if-lt v3, v9, :cond_3

    if-gt v3, v10, :cond_3

    .line 934
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    add-int/lit8 v6, v3, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "infoDst":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 939
    .restart local v1    # "infoDst":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    :goto_3
    new-instance v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 940
    .local v4, "temp":Ljava/lang/String;
    iget-object v5, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 941
    iget-object v5, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    iget-object v5, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 943
    iget-object v5, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 930
    .end local v4    # "temp":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "infoSrc":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .restart local v2    # "infoSrc":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    goto :goto_2

    .line 936
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "infoDst":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .restart local v1    # "infoDst":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    goto :goto_3

    .line 952
    .end local v1    # "infoDst":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    .end local v2    # "infoSrc":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    .restart local v0    # "index":I
    :cond_4
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 953
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v5, v5, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 956
    :cond_5
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_5
    const/4 v5, 0x4

    if-le v0, v5, :cond_7

    .line 957
    const-string v5, "ShortcutView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 959
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 960
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    const-string/jumbo v6, "none"

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 964
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridAdapter:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->notifyDataSetChanged()V

    .line 965
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->updateAllShortcutDrawable()V

    .line 968
    .end local v0    # "index":I
    .end local v3    # "matchIndex":I
    :cond_8
    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    sget v6, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISEMPTY:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 969
    return-void
.end method

.method private resetAll()V
    .locals 1

    .prologue
    .line 1401
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/TimerUI;->removeLevelUI()V

    .line 1402
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1403
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->clearAllSavedData()V

    .line 1404
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->resetAllData()V

    .line 1405
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initAllDrawable()V

    .line 1406
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initShortcutItemList()V

    .line 1407
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridAdapter:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->notifyDataSetChanged()V

    .line 1408
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initShortcutItem()V

    .line 1409
    return-void
.end method

.method private showMoveView(IILcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;I)V
    .locals 3
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "info"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    .param p4, "id"    # I

    .prologue
    .line 878
    iget-object v0, p3, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutPanelFadeInAnimationRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->bMoveViewAdded:Z

    if-eqz v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const-string v0, "ShortcutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMoveView srcIndex = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p3, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 886
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveViewRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 887
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 888
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 889
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveViewRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->bMoveViewAdded:Z

    .line 891
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setId(I)V

    .line 892
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideViewAccordingToId(I)V

    goto :goto_0
.end method

.method private showShortcutPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 994
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 995
    const-string v1, "ShortcutView"

    const-string/jumbo v2, "showShortcutPanel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-array v0, v4, [I

    const v1, 0x7f10015d

    aput v1, v0, v3

    .line 997
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/PhotoUI;->clearScreen([I)V

    .line 998
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    sget-object v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 999
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1000
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelInner:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1001
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutPanelFadeInAnimationRunning:Z

    .line 1003
    .end local v0    # "exclude":[I
    :cond_0
    return-void
.end method

.method private updateMoveView(II)V
    .locals 4
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    .line 896
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISEMPTY:I

    if-eq v1, v2, :cond_0

    .line 897
    const-string v1, "ShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMoveView screenX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screenY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 899
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 900
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveViewRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->checkAllRect(II)I

    move-result v0

    .line 902
    .local v0, "newIndex":I
    const-string v1, "ShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oldIndex = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v1, "ShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newIndex = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v0    # "newIndex":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addGesturesUnclickableArea()V
    .locals 6

    .prologue
    .line 1598
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    if-eqz v4, :cond_1

    .line 1599
    const-string/jumbo v4, "panhui7"

    const-string/jumbo v5, "shortcutView addGesturesUnclickableArea, mUI != null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    .local v0, "arr$":[Lcom/lenovo/scg/camera/ui/RotateImageView;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1601
    .local v3, "shortoutItem":Lcom/lenovo/scg/camera/ui/RotateImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/PhotoUI;->addGesturesUnclickableArea(Landroid/view/View;)V

    .line 1600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1603
    .end local v3    # "shortoutItem":Lcom/lenovo/scg/camera/ui/RotateImageView;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/PhotoUI;->addGesturesUnclickableArea(Landroid/view/View;)V

    .line 1607
    .end local v0    # "arr$":[Lcom/lenovo/scg/camera/ui/RotateImageView;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :goto_1
    return-void

    .line 1605
    :cond_1
    const-string/jumbo v4, "panhui7"

    const-string/jumbo v5, "shortcutView addGesturesUnclickableArea, mUI = null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 1038
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideShortcutPanel(Z)Z

    .line 1057
    :goto_0
    return v0

    .line 1043
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1045
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1046
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideShortcutPanel(Z)Z

    .line 1057
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1050
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->removeMoveView(II)V

    goto :goto_1

    .line 1053
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1055
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->updateMoveView(II)V

    goto :goto_1
.end method

.method public expandShortcut()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1512
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1532
    :goto_0
    return-void

    .line 1516
    :cond_0
    const-string v2, "ShortcutView"

    const-string v3, "expandShortcut"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    const v3, 0x7f0201e1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1519
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 1521
    const/4 v1, 0x0

    .line 1522
    .local v1, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1523
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 1524
    .restart local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const-string v2, "ShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v2, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 1526
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1527
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1522
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1531
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideHint()V

    goto :goto_0
.end method

.method public getCurrentVisibleItems()I
    .locals 3

    .prologue
    .line 1438
    const/4 v0, 0x0

    .line 1439
    .local v0, "currentItem":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1440
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1441
    add-int/lit8 v0, v0, 0x1

    .line 1439
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1445
    :cond_1
    return v0
.end method

.method public getDrawableAndScreenRectMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1569
    const/4 v1, 0x0

    .line 1570
    .local v1, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mDrawableAndScreenRectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1571
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 1572
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1573
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1574
    .local v3, "rectInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 1577
    .restart local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    instance-of v4, v4, Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v4, :cond_1

    .line 1578
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDrawablePos(Landroid/graphics/Rect;)V

    .line 1579
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 1580
    .local v2, "pos":[I
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLocationOnScreen([I)V

    .line 1581
    iget v4, v3, Landroid/graphics/Rect;->left:I

    aget v5, v2, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1582
    iget v4, v3, Landroid/graphics/Rect;->top:I

    aget v5, v2, v7

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1583
    iget v4, v3, Landroid/graphics/Rect;->right:I

    aget v5, v2, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1584
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    aget v5, v2, v7

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1589
    .end local v2    # "pos":[I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mDrawableAndScreenRectMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    .end local v3    # "rectInScreen":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1586
    .restart local v3    # "rectInScreen":Landroid/graphics/Rect;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 1593
    .end local v3    # "rectInScreen":Landroid/graphics/Rect;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mDrawableAndScreenRectMap:Ljava/util/HashMap;

    return-object v4
.end method

.method public getDrawableId(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1618
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1623
    :goto_0
    return v1

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getDrawableId error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1621
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1623
    goto :goto_0
.end method

.method public getProSmartStatus()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_smart_pro_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    const-string/jumbo v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hideBigPanel(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1231
    const-string v0, "flash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initFlashDrawable()V

    .line 1255
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideShortcutPanel(Z)Z

    .line 1256
    return-void

    .line 1233
    :cond_1
    const-string v0, "function"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1234
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initFunctionDrawable()V

    goto :goto_0

    .line 1235
    :cond_2
    const-string/jumbo v0, "metering"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1236
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initMeteringDrawable()V

    goto :goto_0

    .line 1237
    :cond_3
    const-string v0, "antibanding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1238
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initAntibandingDrawable()V

    goto :goto_0

    .line 1239
    :cond_4
    const-string/jumbo v0, "voicekey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1240
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initVoiceKeyDrawable()V

    goto :goto_0

    .line 1241
    :cond_5
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1242
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initVideoDrawable()V

    .line 1243
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initVQualityDrawable()V

    goto :goto_0

    .line 1244
    :cond_6
    const-string v0, "line"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1245
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initLineDrawable()V

    goto :goto_0

    .line 1246
    :cond_7
    const-string/jumbo v0, "video_quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1247
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initVQualityDrawable()V

    .line 1248
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initVideoDrawable()V

    goto :goto_0

    .line 1249
    :cond_8
    const-string/jumbo v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initSizeDrawable()V

    .line 1251
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initLevelDrawable()V

    .line 1252
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initLineDrawable()V

    goto/16 :goto_0
.end method

.method public hideHint()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1666
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1667
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1668
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint3:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1669
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint4:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1670
    return-void
.end method

.method public hideShortcutPanel(Z)Z
    .locals 5
    .param p1, "bAni"    # Z

    .prologue
    const/16 v4, 0x8

    .line 1006
    const-string v1, "ShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideShortcutPanel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutPanelFadeOutAnimationRunning:Z

    if-nez v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    sget-object v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 1011
    if-eqz p1, :cond_2

    .line 1012
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelInner:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1016
    :goto_0
    const/4 v0, 0x1

    .line 1019
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutBigPanelFadeOutAnimationRunning:Z

    if-nez v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    sget-object v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 1021
    if-eqz p1, :cond_3

    .line 1022
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1028
    :goto_1
    const/4 v0, 0x1

    .line 1031
    :cond_1
    return v0

    .line 1014
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1024
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setVisibility(I)V

    .line 1025
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getAppView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1026
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    goto :goto_1
.end method

.method public initArrow()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1449
    const-string v4, "ShortcutView"

    const-string v5, "initArrow"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v2, 0x0

    .line 1452
    .local v2, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 1453
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1456
    :cond_0
    const/4 v3, 0x0

    .line 1457
    .local v3, "noneItems":I
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 1458
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 1459
    .restart local v2    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v4, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1461
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1462
    add-int/lit8 v3, v3, 0x1

    .line 1457
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1466
    :cond_2
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "noneItems = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/4 v4, 0x2

    if-gt v3, v4, :cond_4

    .line 1468
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1474
    :goto_2
    const/4 v0, 0x0

    .line 1475
    .local v0, "goneItems":I
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 1476
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 1477
    .restart local v2    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v4, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 1479
    add-int/lit8 v0, v0, 0x1

    .line 1475
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1470
    .end local v0    # "goneItems":I
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1471
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_2

    .line 1483
    .restart local v0    # "goneItems":I
    :cond_5
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goneItems = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    if-nez v0, :cond_6

    .line 1485
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    const v5, 0x7f0201e1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1486
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 1493
    :goto_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    new-instance v5, Lcom/lenovo/scg/camera/shortcut/ShortcutView$8;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$8;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1507
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->showHint()V

    .line 1508
    return-void

    .line 1488
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    const v5, 0x7f0201e4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1489
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    goto :goto_4
.end method

.method public initResetButton()V
    .locals 2

    .prologue
    .line 1412
    const v0, 0x7f1008e1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetButton:Landroid/widget/ImageButton;

    .line 1413
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1435
    return-void
.end method

.method public initShortcutItemList()V
    .locals 7

    .prologue
    .line 1301
    const-string v4, "ShortcutView"

    const-string v5, "initShortcutItemList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getLocalPreference()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "camera_shortcut_order_saved"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1303
    const-string v4, "ShortcutView"

    const-string v5, "item\'s order is saved"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getLocalPreference()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "camera_shortcut_items"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1326
    .local v3, "items":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 1328
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1332
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "items":Ljava/lang/String;
    :cond_0
    const-string v4, "ShortcutView"

    const-string v5, "item\'s order is not saved"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    sget-object v4, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sShortcutName:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 1335
    sget-object v4, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sShortcutName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "storage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraConfig;->isDoubleStorageSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1337
    const-string v4, "ShortcutView"

    const-string v5, "isDoubleStorageSupported false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1341
    :cond_1
    sget-object v4, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sShortcutName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "sound"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1342
    const-string v4, "ShortcutView"

    const-string v5, "isCanDisableShutterSound false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1346
    :cond_2
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShortcutUtil.sShortcutName[index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sShortcutName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    sget-object v5, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sShortcutName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1351
    .end local v2    # "index":I
    :cond_3
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShortcutItemList.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :goto_3
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_4

    .line 1354
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1357
    :cond_4
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShortcutItemList.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return-void
.end method

.method public isCurrentItemInDefault(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 1673
    const-string v0, "hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isHDRInDefault()Z

    move-result v0

    .line 1705
    :goto_0
    return v0

    .line 1675
    :cond_0
    const-string v0, "flash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isFlashInDefault()Z

    move-result v0

    goto :goto_0

    .line 1677
    :cond_1
    const-string v0, "function"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1678
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isFunctionInDefault()Z

    move-result v0

    goto :goto_0

    .line 1679
    :cond_2
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1680
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isVideoInDefault()Z

    move-result v0

    goto :goto_0

    .line 1705
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHdrOpen()Z
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isHdrOpen()Z

    move-result v0

    return v0
.end method

.method public isImageCapture()Z
    .locals 1

    .prologue
    .line 1731
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 325
    const-string v0, "ShortcutView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->settingChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->UPDATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->resetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->RESET:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1061
    const-string v1, "ShortcutView"

    const-string/jumbo v2, "onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/RotateDialogController;->dismissDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideShortcutPanel(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    .line 441
    const-string v9, "ShortcutView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ShortcutView  onClick: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getVisibility()I

    move-result v4

    .line 444
    .local v4, "nVisibility":I
    if-eqz v4, :cond_1

    .line 680
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 446
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "flash"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isFlashAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 449
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "line"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isLineAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 452
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "level"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isLevelAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 455
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "video_quality"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isVQualityAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 459
    :cond_5
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    .line 460
    const-string v8, "ShortcutView"

    const-string v9, "mShortcutPanel is visible, return"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 464
    :cond_6
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    if-eqz v8, :cond_7

    .line 465
    invoke-virtual {p0, v12}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideShortcutPanel(Z)Z

    goto/16 :goto_0

    .line 469
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "itemName":Ljava/lang/String;
    const-string/jumbo v8, "union"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 473
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_union_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f001e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 476
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 477
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->openUnion()V

    .line 482
    :cond_8
    :goto_1
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "union"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 478
    .restart local p1    # "v":Landroid/view/View;
    :cond_9
    const-string/jumbo v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 479
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->closeUnion()V

    goto :goto_1

    .line 488
    .end local v7    # "value":Ljava/lang/String;
    :cond_a
    const-string/jumbo v8, "smart"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 489
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_smart_pro_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0020

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 491
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 492
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->openSmart()V

    .line 493
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->addProSmartUIView()V

    .line 499
    :cond_b
    :goto_2
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "smart"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 494
    .restart local p1    # "v":Landroid/view/View;
    :cond_c
    const-string/jumbo v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 495
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->closeSmart()V

    .line 496
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->removeSmartUIView()V

    goto :goto_2

    .line 505
    .end local v7    # "value":Ljava/lang/String;
    :cond_d
    const-string/jumbo v8, "sound"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 506
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_shutter_voice_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0018

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 509
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 510
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->openSound()V

    .line 515
    :cond_e
    :goto_3
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "sound"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 511
    .restart local p1    # "v":Landroid/view/View;
    :cond_f
    const-string/jumbo v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 512
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->closeSound()V

    goto :goto_3

    .line 521
    .end local v7    # "value":Ljava/lang/String;
    :cond_10
    const-string v8, "hdr"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 522
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_hdr_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f001c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 525
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 526
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->openHDR()V

    .line 536
    :cond_11
    :goto_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initFlashDrawable()V

    .line 537
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initLineDrawable()V

    .line 538
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initLevelDrawable()V

    .line 539
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initSizeDrawable()V

    .line 541
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "hdr"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 542
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->updateAllShortcutDrawable()V

    goto/16 :goto_0

    .line 532
    .restart local p1    # "v":Landroid/view/View;
    :cond_12
    const-string/jumbo v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 533
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->closeHDR()V

    goto :goto_4

    .line 561
    .end local v7    # "value":Ljava/lang/String;
    :cond_13
    const-string/jumbo v8, "videostable"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 562
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_video_wendingqi_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f000c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 564
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 565
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->closeVideoStable()V

    .line 570
    :cond_14
    :goto_5
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "videostable"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 566
    .restart local p1    # "v":Landroid/view/View;
    :cond_15
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 567
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->openVideoStable()V

    goto :goto_5

    .line 576
    .end local v7    # "value":Ljava/lang/String;
    :cond_16
    const-string/jumbo v8, "time"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 577
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_time_print_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0003

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 579
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 580
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->closeTime()V

    .line 585
    :cond_17
    :goto_6
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "time"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 581
    .restart local p1    # "v":Landroid/view/View;
    :cond_18
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 582
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->openTime()V

    goto :goto_6

    .line 591
    .end local v7    # "value":Ljava/lang/String;
    :cond_19
    const-string v8, "level"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 592
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_shui_ping_yi_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0010

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 594
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 595
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->closeLevel()V

    .line 600
    :cond_1a
    :goto_7
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "level"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 596
    .restart local p1    # "v":Landroid/view/View;
    :cond_1b
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 597
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->openLevel()V

    goto :goto_7

    .line 606
    .end local v7    # "value":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v8, "storage"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 607
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_storage_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0015

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 609
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 610
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->selectSdcard()V

    .line 615
    :cond_1d
    :goto_8
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "storage"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 611
    .restart local p1    # "v":Landroid/view/View;
    :cond_1e
    const-string/jumbo v8, "sdcard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 612
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->selectPhone()V

    goto :goto_8

    .line 621
    .end local v7    # "value":Ljava/lang/String;
    :cond_1f
    const-string v8, "aeaf_separation"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 622
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v8

    const-string v9, "camera_setting_ae_af_key"

    iget-object v10, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0021

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 624
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 625
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->closeAEAF()V

    .line 630
    :cond_20
    :goto_9
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "aeaf_separation"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 626
    .restart local p1    # "v":Landroid/view/View;
    :cond_21
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 627
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->openAEAF()V

    goto :goto_9

    .line 635
    .end local v7    # "value":Ljava/lang/String;
    :cond_22
    const/4 v5, 0x0

    .line 636
    .local v5, "temp":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_a
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v8, v8

    if-ge v0, v8, :cond_24

    .line 637
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 638
    .local v1, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_23

    .line 639
    const/4 v8, -0x1

    iput v8, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->temporaryIndex:I

    .line 636
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 641
    :cond_23
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "temp":I
    .local v6, "temp":I
    iput v5, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->temporaryIndex:I

    move v5, v6

    .end local v6    # "temp":I
    .restart local v5    # "temp":I
    goto :goto_b

    .line 645
    .end local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    :cond_24
    const-string v9, "ShortcutView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "((ShortcutInfo)v.getTag()).temporaryIndex : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->temporaryIndex:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04017e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    iput-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    .line 648
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {v8, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setShortcutAdapterController(Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;)V

    .line 649
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    iget-object v9, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 650
    iget-object v9, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->temporaryIndex:I

    invoke-virtual {v9, v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setId(I)V

    .line 651
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    const v9, 0x7f1008da

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 652
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget v9, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I

    invoke-virtual {v8, v9, v12}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 653
    iget-object v9, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->showListView(Ljava/lang/String;)V

    .line 654
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 655
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 656
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090013

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget v8, v8, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->temporaryIndex:I

    packed-switch v8, :pswitch_data_0

    .line 676
    :goto_c
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/PhotoUI;->getAppView()Landroid/widget/RelativeLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    invoke-virtual {v8, v9, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setVisibility(I)V

    .line 678
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    sget-object v9, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v8, v9}, Lcom/lenovo/scg/camera/shortcut/ShortcutController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 679
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v9, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 659
    :pswitch_0
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_c

    .line 662
    :pswitch_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_c

    .line 665
    :pswitch_2
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_c

    .line 668
    :pswitch_3
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_c

    .line 671
    :pswitch_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_c

    .line 657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 333
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 335
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->settingChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    if-nez v2, :cond_0

    .line 367
    :goto_0
    return-void

    .line 340
    :cond_0
    const-string v2, "ShortcutView"

    const-string/jumbo v3, "onDetachedFromWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->saveCurrentOrder()V

    .line 344
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideShortcutPanel(Z)Z

    .line 346
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->bMoveViewAdded:Z

    if-eqz v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveViewRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 348
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mMoveView:Landroid/widget/ImageView;

    sget v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->MOVEVIEWISEMPTY:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 349
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->bMoveViewAdded:Z

    .line 352
    :cond_1
    iput-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 353
    iput-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 354
    iput-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelFadeOutAnimation:Landroid/view/animation/Animation;

    .line 355
    iput-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanelFadeInAnimation:Landroid/view/animation/Animation;

    .line 357
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mScreenRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 358
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 359
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mDrawableAndScreenRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 360
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 363
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getLocalPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera_shortcut_shrink"

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    iput-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 363
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 289
    const-string v0, "ShortcutView"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const v0, 0x7f1008de

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mSmallBg:Landroid/widget/ImageView;

    .line 293
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initMoveView()V

    .line 294
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initAnimation()V

    .line 295
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initShortcutPanel()V

    .line 296
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initResetButton()V

    .line 298
    const v0, 0x7f1008e8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mStatusbar:Landroid/widget/LinearLayout;

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v0, 0x7f1008e9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 301
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v0, 0x7f1008ea

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v0, v1, v3

    .line 302
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v0, 0x7f1008eb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v0, v1, v4

    .line 303
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v0, 0x7f1008ec

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v0, v1, v5

    .line 304
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v0, 0x7f1008ed

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v0, v1, v6

    .line 306
    const v0, 0x7f1008e2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    .line 308
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    const v0, 0x7f1008e3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 309
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    const v0, 0x7f1008e4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 310
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    const v0, 0x7f1008e5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 311
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    const v0, 0x7f1008e6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 312
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;

    const v0, 0x7f1008e7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 314
    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    .line 316
    const v0, 0x7f1008ee

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 317
    const v0, 0x7f1008ef

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 318
    const v0, 0x7f1008f0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint3:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 319
    const v0, 0x7f1008f1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint4:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 320
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 684
    const-string v1, "ShortcutView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortcutView  onLongClick: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v3

    .line 689
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isTimering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->showShortcutPanel()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1073
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->showMoveView(IILcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;I)V

    .line 1083
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1078
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1080
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public saveCurrentOrder()V
    .locals 3

    .prologue
    .line 1361
    const-string v0, "ShortcutView"

    const-string/jumbo v1, "saveCurrentOrder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getLocalPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_shortcut_items"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItemList:Ljava/util/LinkedList;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->joinString(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1389
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getLocalPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_shortcut_order_saved"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1390
    return-void
.end method

.method public setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 6
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    const-string v0, "ShortcutView"

    const-string/jumbo v1, "setCameraSettingController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 246
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    .line 248
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initShortcutItemList()V

    .line 249
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initShortcutItem()V

    .line 250
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initArrow()V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_frist_enter_pro"

    invoke-virtual {v0, v1, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "ShortcutView"

    const-string v1, "frist enter pro mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_frist_enter_pro"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->shrinkShortcut(Z)V

    .line 262
    :cond_0
    :goto_0
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridAdapter:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridAdapter:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    return-void

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getLocalPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "camera_shortcut_shrink"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->shrinkShortcut(Z)V

    goto :goto_0
.end method

.method public setController(Lcom/lenovo/scg/camera/shortcut/ShortcutController;)V
    .locals 2
    .param p1, "controller"    # Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    .prologue
    .line 237
    const-string v0, "ShortcutView"

    const-string/jumbo v1, "setController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mController:Lcom/lenovo/scg/camera/shortcut/ShortcutController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mStatusbar:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutController;->setStatusBar(Landroid/widget/LinearLayout;)V

    .line 240
    return-void
.end method

.method public setOrientation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x1

    .line 406
    const-string v1, "ShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iput p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I

    .line 409
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 410
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 411
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 412
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 413
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 415
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 416
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 417
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint3:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 418
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint4:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 420
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    invoke-virtual {v1, p1, v4}, Lcom/lenovo/scg/camera/RotateDialogController;->setOrientation(IZ)V

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_3

    .line 429
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 430
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 429
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    rsub-int v2, p1, 0x10e

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 437
    .end local v0    # "index":I
    :cond_3
    return-void
.end method

.method public setPhotoUI(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0
    .param p1, "ui"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    .line 218
    return-void
.end method

.method public setProFunctionUI(Lcom/lenovo/scg/camera/function/ProFunctionUI;)V
    .locals 0
    .param p1, "functionUI"    # Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 222
    return-void
.end method

.method public showHint()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1627
    const-string v3, "ShortcutView"

    const-string/jumbo v4, "showHint"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/4 v3, 0x4

    new-array v2, v3, [Z

    .line 1629
    .local v2, "mFlags":[Z
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideHint()V

    .line 1631
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 1632
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 1633
    .local v1, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const-string v3, "ShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v3, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isCurrentItemInDefault(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1631
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1639
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1640
    :cond_2
    aget-boolean v3, v2, v7

    if-nez v3, :cond_3

    .line 1641
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1642
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v4, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1643
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1644
    aput-boolean v6, v2, v7

    goto :goto_1

    .line 1645
    :cond_3
    aget-boolean v3, v2, v6

    if-nez v3, :cond_4

    .line 1646
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1647
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v4, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1648
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1649
    aput-boolean v6, v2, v6

    goto :goto_1

    .line 1650
    :cond_4
    aget-boolean v3, v2, v8

    if-nez v3, :cond_5

    .line 1651
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint3:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1652
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint3:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v4, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1653
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint3:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1654
    aput-boolean v6, v2, v8

    goto/16 :goto_1

    .line 1655
    :cond_5
    aget-boolean v3, v2, v9

    if-nez v3, :cond_0

    .line 1656
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint4:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1657
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint4:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v4, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1658
    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHint4:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1659
    aput-boolean v6, v2, v9

    goto/16 :goto_1

    .line 1663
    .end local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    :cond_6
    return-void
.end method

.method public shrinkShortcut(Z)V
    .locals 6
    .param p1, "bAni"    # Z

    .prologue
    const/4 v5, 0x2

    .line 1536
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    const-string v2, "ShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shrinkShortcut, getCurrentVisibleItems == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getCurrentVisibleItems()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getCurrentVisibleItems()I

    move-result v1

    .line 1543
    .local v1, "visibleItems":I
    if-le v1, v5, :cond_0

    .line 1546
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    const v3, 0x7f0201e4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1547
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 1549
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_1
    if-lez v0, :cond_2

    .line 1550
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 1551
    if-eqz p1, :cond_3

    .line 1552
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1553
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1558
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 1559
    if-ne v1, v5, :cond_4

    .line 1565
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->showHint()V

    goto :goto_0

    .line 1555
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_2

    .line 1549
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public updateAllShortcutDrawable()V
    .locals 8

    .prologue
    .line 1259
    const-string v4, "ShortcutView"

    const-string/jumbo v5, "updateAllShortcutDrawable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const/4 v3, 0x0

    .line 1262
    .local v3, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 1263
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    move-object v3, v0

    .line 1264
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShortcutItem info.name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v4, v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1266
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v2

    const v5, 0x7f020365

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1262
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1268
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 1269
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;

    aget-object v5, v4, v2

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1286
    :catch_0
    move-exception v1

    .line 1287
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1289
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    return-void

    .line 1274
    :cond_3
    const/4 v2, 0x0

    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1276
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1274
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1280
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    move-object v3, v0

    .line 1282
    const-string v4, "ShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGridView info.name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getDrawableMap()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v5, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableText:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/lenovo/scg/camera/shortcut/ShortcutViewItem;->setStringAndDrawableId(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
