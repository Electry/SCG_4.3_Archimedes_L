.class public Lcn/jingling/lib/textbubble/ScreenControl;
.super Ljava/lang/Object;
.source "ScreenControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;
    }
.end annotation


# static fields
.field public static final ADDINGACCESSORY:I = 0x0

.field public static final ADDINGFRAME:I = 0x1

.field public static final ADDINGMULTIPICSFRAME:I = 0x3

.field public static final ADDINGTEXT:I = 0x2

.field public static final FINGER_BOUND:I = 0x14

.field private static final JUMP_DIST:F = 50.0f

.field private static final MAX_ONE_STEP_MOVE_LIMIT:F = 10.0f

.field private static final MAX_ONE_STEP_SCALE_LIMIT:F = 1.05f

.field private static final MIN_POINTERS_DIST_LIMIT:F = 20.0f

.field private static final NONE:I = 0x0

.field static final ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScreenControl"

.field private static final ZOOM:I = 0x2

.field protected static mEvent:Lcn/jingling/lib/textbubble/PwMotion;

.field public static mLayoutHeight:I

.field public static mLayoutWidth:I

.field private static mSingleton:Lcn/jingling/lib/textbubble/ScreenControl;


# instance fields
.field public AddingMode:I

.field public final MID:I

.field public final PRESSED:I

.field public final UP:I

.field private addValue:I

.field public currentShow:I

.field public firstId:I

.field isDelete:Z

.field public isDoAll:Ljava/lang/Boolean;

.field isDownVisible:Z

.field public isFirstIn:Ljava/lang/Boolean;

.field private isFirstRotate:Z

.field isFisrtDown:Z

.field public isRightPosition:Z

.field public mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

.field public mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

.field private mAccessory_del:I

.field private mAccessoryoperater:I

.field public mActionIsUp:Ljava/lang/Boolean;

.field private mActivity:Landroid/app/Activity;

.field private mFirstOnePointer:Ljava/lang/Boolean;

.field private mFirstPoint:Lcn/jingling/lib/textbubble/MyPoint;

.field private mFirstTwoPointer:Ljava/lang/Boolean;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field public mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

.field public mImageControlArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jingling/lib/textbubble/ImageControl;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAddingAccessory:Ljava/lang/Boolean;

.field public mIsAddingBlush:Ljava/lang/Boolean;

.field public mIsAddingFrame:Ljava/lang/Boolean;

.field public mIsAddingText:Ljava/lang/Boolean;

.field private mIsBigMove:Z

.field public mIsCanEnterEditing:Z

.field public mIsEditingText:Z

.field public mIsEffectMode:Ljava/lang/Boolean;

.field private mIsKeepSelected:Z

.field private mIsMosaic:Ljava/lang/Boolean;

.field private mIsMouseDown:Ljava/lang/Boolean;

.field public mIsShape:Ljava/lang/Boolean;

.field public mIsShapeShow:Ljava/lang/Boolean;

.field private mIsShapeShowWhenDown:Ljava/lang/Boolean;

.field public mLastMatrix:Landroid/graphics/Matrix;

.field private mOnEditingCallback:Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;

.field private mPointerCnt:I

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

.field private mSingleTapped:Ljava/lang/Boolean;

.field public mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

.field private mTextBoxId:I

.field private mTextDeleteLimit:I

.field private mode:I

.field private newAngel:D

.field private newDist:F

.field private newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

.field private newPointer0:Lcn/jingling/lib/textbubble/MyPoint;

.field private newPointer1:Lcn/jingling/lib/textbubble/MyPoint;

.field private newSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

.field private oldAngel:D

.field private oldDist:F

.field private oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

.field private oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

.field private oldPointer1:Lcn/jingling/lib/textbubble/MyPoint;

.field private oldSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

.field public selectTextBubbleID:I

.field public switchView:Ljava/lang/Boolean;

.field private tempCurrentShow:I

.field public viewId:I

.field public willDelete:Ljava/lang/Boolean;

.field public willMoveMain:Ljava/lang/Boolean;

.field public willMoveOutter:Ljava/lang/Boolean;

.field public willRotate:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleton:Lcn/jingling/lib/textbubble/ScreenControl;

    .line 99
    new-instance v0, Lcn/jingling/lib/textbubble/PwMotionHigh;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/PwMotionHigh;-><init>()V

    sput-object v0, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    .line 647
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->PRESSED:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->UP:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->MID:I

    .line 41
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    .line 45
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 46
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 48
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 54
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 55
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingAccessory:Ljava/lang/Boolean;

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingText:Ljava/lang/Boolean;

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingFrame:Ljava/lang/Boolean;

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingBlush:Ljava/lang/Boolean;

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsShape:Ljava/lang/Boolean;

    .line 62
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsShapeShow:Ljava/lang/Boolean;

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsMouseDown:Ljava/lang/Boolean;

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsShapeShowWhenDown:Ljava/lang/Boolean;

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsMosaic:Ljava/lang/Boolean;

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEffectMode:Ljava/lang/Boolean;

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    .line 87
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGestureDetector:Landroid/view/GestureDetector;

    .line 91
    iput-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsBigMove:Z

    .line 93
    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    .line 97
    iput-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    .line 649
    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mPointerCnt:I

    .line 650
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstOnePointer:Ljava/lang/Boolean;

    .line 651
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstTwoPointer:Ljava/lang/Boolean;

    .line 654
    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mode:I

    .line 657
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    .line 658
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    .line 661
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    .line 662
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    .line 664
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    .line 665
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    .line 667
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->oldSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    .line 668
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->newSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    .line 673
    iput-boolean v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isFirstRotate:Z

    .line 675
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    .line 676
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    .line 677
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveMain:Ljava/lang/Boolean;

    .line 678
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveOutter:Ljava/lang/Boolean;

    .line 679
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isDoAll:Ljava/lang/Boolean;

    .line 680
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isFirstIn:Ljava/lang/Boolean;

    .line 682
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->switchView:Ljava/lang/Boolean;

    .line 683
    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 684
    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 685
    iput-boolean v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isRightPosition:Z

    .line 687
    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 688
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    .line 821
    iput-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isDelete:Z

    .line 822
    iput-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isDownVisible:Z

    .line 823
    iput-boolean v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isFisrtDown:Z

    .line 1112
    iput-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    .line 1113
    iput-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsCanEnterEditing:Z

    .line 1479
    iput-boolean v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsKeepSelected:Z

    .line 31
    return-void
.end method

.method private callBackAccessoryDeleted(Lcn/jingling/lib/textbubble/AccessoryImage;)V
    .locals 1
    .param p1, "accessoryImage"    # Lcn/jingling/lib/textbubble/AccessoryImage;

    .prologue
    .line 1570
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    invoke-interface {v0, p1}, Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;->onAccessoryDeleted(Lcn/jingling/lib/textbubble/AccessoryImage;)V

    .line 1573
    :cond_0
    return-void
.end method

.method private callBackAccessoryMoved(Lcn/jingling/lib/textbubble/ImageControl;)V
    .locals 1
    .param p1, "imageControl"    # Lcn/jingling/lib/textbubble/ImageControl;

    .prologue
    .line 1576
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    invoke-interface {v0, p1}, Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;->onAccessoryMoved(Lcn/jingling/lib/textbubble/ImageControl;)V

    .line 1579
    :cond_0
    return-void
.end method

.method private callBackHideAllAccessories()V
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    invoke-interface {v0}, Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;->onHideAllAccessories()V

    .line 1591
    :cond_0
    return-void
.end method

.method private callBackShowAllAccessories()V
    .locals 1

    .prologue
    .line 1582
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    invoke-interface {v0}, Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;->onShowAllAccessories()V

    .line 1585
    :cond_0
    return-void
.end method

.method private callBackSingleTapped()V
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    invoke-interface {v0}, Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;->onSingleTapped()V

    .line 1567
    :cond_0
    return-void
.end method

.method private findTouchedViewId(Lcn/jingling/lib/textbubble/MyPoint;)I
    .locals 5
    .param p1, "point"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    const/16 v4, 0xa

    .line 1043
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingAccessory:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1044
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v3, p1, v4}, Lcn/jingling/lib/textbubble/AccessoryFlag;->isContainPoint(Lcn/jingling/lib/textbubble/MyPoint;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1045
    const/4 v1, -0x2

    .line 1065
    :goto_0
    return v1

    .line 1047
    :cond_0
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v3, p1, v4}, Lcn/jingling/lib/textbubble/AccessoryFlag;->isContainPointDel(Lcn/jingling/lib/textbubble/MyPoint;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1048
    const-string v3, "ScreenControl"

    const-string v4, "at del btn"

    invoke-static {v3, v4}, Lcn/jingling/lib/textbubble/Pwog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const/4 v1, -0x3

    goto :goto_0

    .line 1053
    :cond_1
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1055
    .local v0, "arrayListSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_2

    .line 1065
    const/4 v1, -0x1

    goto :goto_0

    .line 1056
    :cond_2
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/ImageControl;

    .line 1057
    .local v2, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ImageControl;->isControlEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1055
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1060
    :cond_4
    invoke-virtual {v2, p1, v4}, Lcn/jingling/lib/textbubble/ImageControl;->isContainPoint(Lcn/jingling/lib/textbubble/MyPoint;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method private findTouchedViewIdForShape(Lcn/jingling/lib/textbubble/MyPoint;)I
    .locals 4
    .param p1, "point"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 1070
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1072
    .local v0, "arrayListSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 1079
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 1073
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/ImageControl;

    .line 1074
    .local v2, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    const/16 v3, 0xa

    invoke-virtual {v2, p1, v3}, Lcn/jingling/lib/textbubble/ImageControl;->isContainPoint(Lcn/jingling/lib/textbubble/MyPoint;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1072
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleton:Lcn/jingling/lib/textbubble/ScreenControl;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/ScreenControl;-><init>()V

    sput-object v0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleton:Lcn/jingling/lib/textbubble/ScreenControl;

    .line 115
    :cond_0
    sget-object v0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleton:Lcn/jingling/lib/textbubble/ScreenControl;

    return-object v0
.end method

.method private initializeAccessoryFlag(II)V
    .locals 8
    .param p1, "accessoryoperater"    # I
    .param p2, "i_accessory_del"    # I

    .prologue
    const/4 v7, -0x2

    .line 176
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 179
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 180
    .local v6, "viewMove":Landroid/widget/ImageView;
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 182
    iget-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 184
    .local v5, "picMove":Landroid/graphics/drawable/Drawable;
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "picMove":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    .local v0, "bitmapMove":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 187
    .local v2, "btnDel":Landroid/widget/ImageView;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    iget-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 191
    .local v4, "picDel":Landroid/graphics/drawable/Drawable;
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "picDel":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    .local v1, "bmDel":Landroid/graphics/Bitmap;
    new-instance v7, Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-direct {v7, v6, v0, v2, v1}, Lcn/jingling/lib/textbubble/AccessoryFlag;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 194
    return-void
.end method

.method private initializeAccessoryMiddle()V
    .locals 9

    .prologue
    const/4 v7, -0x2

    const/high16 v8, -0x80000000

    .line 198
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 201
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    sget v7, Lcn/jingling/lib/textbubble/ScreenControl;->mLayoutWidth:I

    div-int/lit8 v6, v7, 0x1e

    .line 207
    .local v6, "width":I
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_0

    .line 208
    add-int/lit8 v6, v6, 0x1

    .line 211
    :cond_0
    move v2, v6

    .line 213
    .local v2, "height":I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 214
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {v6, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 224
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_2

    .line 231
    new-instance v7, Lcn/jingling/lib/textbubble/AccessoryMiddle;

    invoke-direct {v7, v4, v0}, Lcn/jingling/lib/textbubble/AccessoryMiddle;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    .line 232
    return-void

    .line 218
    :cond_1
    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v0, v7, v3, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 219
    div-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7, v3, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 220
    div-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7, v3, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_2
    div-int/lit8 v7, v2, 0x2

    invoke-virtual {v0, v3, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 226
    div-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v3, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 227
    div-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v3, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateAddingAccessory(FFFLjava/lang/Boolean;I)V
    .locals 10
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "switchView"    # Ljava/lang/Boolean;
    .param p5, "pointerCnt"    # I

    .prologue
    const/4 v2, -0x3

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, -0x1

    .line 829
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {p0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->findTouchedViewId(Lcn/jingling/lib/textbubble/MyPoint;)I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 831
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 832
    iput-boolean v9, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isFisrtDown:Z

    .line 842
    :cond_0
    :goto_0
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    if-ne v1, v2, :cond_1

    .line 844
    iput-boolean v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isDelete:Z

    .line 847
    :cond_1
    iget-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isDelete:Z

    if-eqz v1, :cond_2

    .line 849
    iput v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 852
    :cond_2
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 854
    :cond_3
    iput-boolean v9, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isDelete:Z

    .line 857
    :cond_4
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 858
    iget-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isDownVisible:Z

    if-eqz v1, :cond_5

    .line 860
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/AccessoryFlag;->toggleVisibility()V

    .line 862
    :cond_5
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->show(I)V

    .line 967
    :cond_6
    :goto_1
    return-void

    .line 835
    :cond_7
    iget-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isFisrtDown:Z

    if-nez v1, :cond_0

    .line 837
    iput-boolean v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isFisrtDown:Z

    .line 838
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    iget-boolean v1, v1, Lcn/jingling/lib/textbubble/AccessoryFlag;->mIsVisible:Z

    iput-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->isDownVisible:Z

    goto :goto_0

    .line 866
    :cond_8
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 877
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->deleteAccessory(I)V

    goto :goto_1

    .line 882
    :cond_9
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 884
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    .line 886
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_a

    .line 887
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ltz v1, :cond_e

    .line 888
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    .line 894
    :cond_a
    :goto_2
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    if-ne v1, v3, :cond_b

    .line 895
    iput v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 898
    :cond_b
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    if-ltz v1, :cond_c

    .line 899
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 904
    :cond_c
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_f

    .line 905
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 906
    iget-object v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move v1, p1

    move v2, p2

    move v3, p3

    .line 905
    invoke-virtual/range {v0 .. v6}, Lcn/jingling/lib/textbubble/GroundImage;->addingAccessoryUpdate(FFFLjava/lang/Boolean;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 908
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 909
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/GroundImage;->addingAccessoryRebound()V

    .line 965
    :cond_d
    :goto_3
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v1, v2}, Lcn/jingling/lib/textbubble/AccessoryFlag;->show(I)V

    .line 966
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v1, v2}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->show(I)V

    goto/16 :goto_1

    .line 890
    :cond_e
    iput v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    goto :goto_2

    .line 912
    :cond_f
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ne v1, v3, :cond_10

    .line 913
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 915
    :cond_10
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 917
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 918
    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/AccessoryImage;

    .line 921
    .local v0, "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    iget-object v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move v1, p1

    move v2, p2

    move v3, p3

    .line 920
    invoke-virtual/range {v0 .. v6}, Lcn/jingling/lib/textbubble/AccessoryImage;->updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 922
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v1, v2}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->show(I)V

    goto :goto_3

    .line 925
    .end local v0    # "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    :cond_11
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 926
    .local v7, "arrayListSize":I
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ge v1, v7, :cond_12

    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-gez v1, :cond_13

    .line 927
    :cond_12
    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 929
    :cond_13
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ltz v1, :cond_6

    .line 932
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 933
    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/AccessoryImage;

    .line 936
    .restart local v0    # "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    add-int/lit8 v2, v7, -0x1

    if-eq v1, v2, :cond_14

    .line 938
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 939
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    iget-object v8, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    .line 943
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->bringToFront()V

    .line 956
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :cond_14
    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 958
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 959
    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    check-cast v0, Lcn/jingling/lib/textbubble/AccessoryImage;

    .line 961
    .restart local v0    # "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    iget-object v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v9

    .line 960
    invoke-virtual/range {v0 .. v6}, Lcn/jingling/lib/textbubble/AccessoryImage;->updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    goto/16 :goto_3
.end method

.method private updateAddingTextBox(FFFLjava/lang/Boolean;ILcn/jingling/lib/textbubble/TouchParameter;Lcn/jingling/lib/textbubble/MyPoint;D)V
    .locals 16
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "switchView"    # Ljava/lang/Boolean;
    .param p5, "pointerCnt"    # I
    .param p6, "touchParameter"    # Lcn/jingling/lib/textbubble/TouchParameter;
    .param p7, "centerPoint"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p8, "rotate"    # D

    .prologue
    .line 1118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcn/jingling/lib/textbubble/ScreenControl;->findTextTouchedViewId(Lcn/jingling/lib/textbubble/MyPoint;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 1119
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsKeepSelected:Z

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1121
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFisrtDown:Z

    .line 1130
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1131
    invoke-direct/range {p0 .. p0}, Lcn/jingling/lib/textbubble/ScreenControl;->callBackSingleTapped()V

    .line 1134
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveOutter:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1135
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->currentShow:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->tempCurrentShow:I

    .line 1137
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->tempCurrentShow:I

    if-ltz v3, :cond_3

    .line 1138
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->tempCurrentShow:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 1139
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveOutter:Ljava/lang/Boolean;

    .line 1142
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 1143
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveMain:Ljava/lang/Boolean;

    .line 1145
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveMain:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1146
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 1149
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1150
    const/4 v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 1153
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1154
    const/4 v3, -0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 1157
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_8

    .line 1158
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    .line 1160
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFirstIn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    if-gez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1161
    :cond_9
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFirstIn:Ljava/lang/Boolean;

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/textbubble/ScreenControl;->showAllView()V

    .line 1165
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1166
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFirstIn:Ljava/lang/Boolean;

    .line 1167
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isDoAll:Ljava/lang/Boolean;

    .line 1168
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    .line 1169
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    .line 1170
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveMain:Ljava/lang/Boolean;

    .line 1171
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveOutter:Ljava/lang/Boolean;

    .line 1174
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 1176
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isDownVisible:Z

    if-eqz v3, :cond_c

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/AccessoryFlag;->toggleVisibility()V

    .line 1180
    :cond_c
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    .line 1181
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    .line 1182
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveMain:Ljava/lang/Boolean;

    .line 1183
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveOutter:Ljava/lang/Boolean;

    .line 1184
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 1185
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 1321
    :cond_d
    :goto_1
    return-void

    .line 1123
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFisrtDown:Z

    if-nez v3, :cond_0

    .line 1124
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFisrtDown:Z

    .line 1125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    iget-boolean v3, v3, Lcn/jingling/lib/textbubble/AccessoryFlag;->mIsVisible:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isDownVisible:Z

    goto/16 :goto_0

    .line 1188
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ltz v3, :cond_10

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/textbubble/ScreenControl;->showAllView()V

    .line 1192
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 1194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/jingling/lib/textbubble/ImageControl;

    .line 1195
    .local v13, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    iget-object v14, v13, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 1197
    .local v14, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v14}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mLastMatrix:Landroid/graphics/Matrix;

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcn/jingling/lib/textbubble/ScreenControl;->deleteText(I)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_11

    .line 1201
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isRightPosition:Z

    .line 1203
    :cond_11
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    .line 1204
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    .line 1205
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveMain:Ljava/lang/Boolean;

    .line 1206
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willMoveOutter:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1210
    .end local v13    # "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    .end local v14    # "imageView":Landroid/widget/ImageView;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willDelete:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1214
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1215
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_13

    .line 1216
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ltz v3, :cond_13

    .line 1217
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    .line 1220
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    if-nez v3, :cond_15

    .line 1221
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    .line 1222
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 1225
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    if-ltz v3, :cond_15

    .line 1226
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    if-eq v3, v4, :cond_1a

    .line 1227
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 1228
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsCanEnterEditing:Z

    .line 1234
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 1235
    .local v2, "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getmTextPara()Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    move-result-object v3

    iget v3, v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->position:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 1240
    .end local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    const/4 v3, 0x2

    move/from16 v0, p5

    if-ne v0, v3, :cond_1c

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1241
    const/4 v3, 0x2

    move/from16 v0, p5

    if-ne v0, v3, :cond_17

    .line 1242
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ltz v3, :cond_1b

    .line 1243
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    .line 1244
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isDoAll:Ljava/lang/Boolean;

    .line 1251
    :cond_17
    :goto_3
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_18

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1253
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    const/4 v9, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 1252
    invoke-virtual/range {v2 .. v9}, Lcn/jingling/lib/textbubble/GroundImage;->addingTextUpdate(FFFLjava/lang/Boolean;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 1256
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/GroundImage;->addingTextRebound()V

    .line 1318
    :cond_19
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ltz v3, :cond_d

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v3, v4}, Lcn/jingling/lib/textbubble/AccessoryFlag;->show(I)V

    goto/16 :goto_1

    .line 1231
    :cond_1a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsCanEnterEditing:Z

    goto/16 :goto_2

    .line 1246
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1247
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v9, p7

    .line 1246
    invoke-virtual/range {v2 .. v9}, Lcn/jingling/lib/textbubble/GroundImage;->addingTextUpdate(FFFLjava/lang/Boolean;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    goto :goto_3

    .line 1259
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    const/4 v4, -0x5

    if-ne v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1261
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 1260
    invoke-virtual/range {v2 .. v8}, Lcn/jingling/lib/textbubble/GroundImage;->addingAccessoryUpdate(FFFLjava/lang/Boolean;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/GroundImage;->addingTextRebound()V

    goto :goto_4

    .line 1266
    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    .line 1267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 1269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 1270
    .restart local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getmTextPara()Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    move-result-object v3

    iget v3, v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->position:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 1272
    .end local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->willRotate:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 1274
    .restart local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    const/4 v6, 0x1

    .line 1275
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isDoAll:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v10, p8

    .line 1274
    invoke-virtual/range {v2 .. v11}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;ZD)V

    goto/16 :goto_4

    .line 1277
    .end local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1278
    .local v12, "arrayListSize":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ge v3, v12, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-gez v3, :cond_21

    .line 1279
    :cond_20
    add-int/lit8 v3, v12, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 1281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 1282
    .restart local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getmTextPara()Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    move-result-object v3

    iget v3, v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->position:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 1284
    .end local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    if-ltz v3, :cond_d

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 1289
    .restart local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    add-int/lit8 v4, v12, -0x1

    if-eq v3, v4, :cond_22

    .line 1290
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isRightPosition:Z

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isRightPosition:Z

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    iget-object v14, v2, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    .line 1296
    .restart local v14    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v14}, Landroid/widget/ImageView;->bringToFront()V

    .line 1297
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/TextBubble;->bringToFront()V

    .line 1300
    .end local v14    # "imageView":Landroid/widget/ImageView;
    :cond_22
    add-int/lit8 v3, v12, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 1301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 1302
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    check-cast v2, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 1304
    .restart local v2    # "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getmTextPara()Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    move-result-object v3

    iget v3, v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->position:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 1306
    const/4 v6, 0x0

    .line 1307
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 1306
    invoke-virtual/range {v2 .. v8}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 1308
    invoke-virtual/range {p6 .. p6}, Lcn/jingling/lib/textbubble/TouchParameter;->getIsUp()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1309
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/jingling/lib/textbubble/ScreenControl;->callBackAccessoryMoved(Lcn/jingling/lib/textbubble/ImageControl;)V

    .line 1312
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/GroundImage;->addingTextRebound()V

    goto/16 :goto_4

    .line 1290
    :cond_24
    const/4 v3, 0x1

    goto :goto_5
.end method

.method private updateOnlyGround(FFFILcn/jingling/lib/textbubble/MyPoint;)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "pointerCnt"    # I
    .param p5, "center"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 1004
    return-void
.end method


# virtual methods
.method public addAccessory(Landroid/graphics/Bitmap;)Lcn/jingling/lib/textbubble/AccessoryImage;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, -0x2

    .line 243
    iget v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    add-int/lit8 v4, v4, 0x28

    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    .line 244
    iget v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jingling/lib/textbubble/ScreenControl;->getmGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v5

    .line 245
    invoke-virtual {v5}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 247
    div-int/lit8 v4, v4, 0x2

    .line 248
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jingling/lib/textbubble/ScreenControl;->getmGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v5

    .line 249
    invoke-virtual {v5}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 248
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 246
    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    .line 251
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v2, "imageView":Landroid/widget/ImageView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 254
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v0, Lcn/jingling/lib/textbubble/AccessoryImage;

    invoke-direct {v0, v2, p1}, Lcn/jingling/lib/textbubble/AccessoryImage;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 257
    .local v0, "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    invoke-virtual {p0, v2}, Lcn/jingling/lib/textbubble/ScreenControl;->addView(Landroid/view/View;)V

    .line 258
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 262
    .local v1, "arralyListSize":I
    iget v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    int-to-float v4, v4

    iget v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lcn/jingling/lib/textbubble/AccessoryImage;->translateImageView(FF)V

    .line 263
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcn/jingling/lib/textbubble/AccessoryFlag;->show(I)V

    .line 264
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->show(I)V

    .line 266
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/AccessoryImage;->inValidateImageView()V

    .line 268
    const/4 v4, -0x1

    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 269
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 270
    return-object v0
.end method

.method public addLoopForRemoveAcneCanvas()Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;
    .locals 4

    .prologue
    .line 321
    new-instance v1, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;

    .line 322
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    .line 321
    invoke-direct {v1, v2}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;-><init>(Landroid/content/Context;)V

    .line 323
    .local v1, "removeAcneCanvas":Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    sget v2, Lcn/jingling/lib/textbubble/ScreenControl;->mLayoutWidth:I

    sget v3, Lcn/jingling/lib/textbubble/ScreenControl;->mLayoutHeight:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 324
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 326
    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->addView(Landroid/view/View;)V

    .line 327
    return-object v1
.end method

.method public addScreenControlCallback(Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    .prologue
    .line 1560
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mScreenControlCallback:Lcn/jingling/lib/textbubble/ScreenControl$ScreenControlCallback;

    .line 1561
    return-void
.end method

.method public addTextBubble(Landroid/graphics/Bitmap;Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;)Lcn/jingling/lib/textbubble/TextBubbleControl;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "para"    # Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    .prologue
    const/4 v4, -0x2

    .line 281
    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    add-int/lit8 v2, v2, 0x28

    iput v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    .line 282
    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/ScreenControl;->getmGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    if-lt v2, v3, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/ScreenControl;->getmGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    .line 287
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 288
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 289
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v0, Lcn/jingling/lib/textbubble/TextBubbleControl;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/jingling/lib/textbubble/TextBubbleControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IILcn/jingling/lib/textbubble/TextBubbleStyleParameter;)V

    .line 292
    .local v0, "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->addView(Landroid/view/View;)V

    .line 293
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/jingling/lib/textbubble/ScreenControl;->addView(Landroid/view/View;)V

    .line 294
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 297
    .local v6, "arralyListSize":I
    const/4 v2, 0x1

    if-ne v6, v2, :cond_1

    .line 298
    sget v2, Lcn/jingling/lib/textbubble/ScreenControl;->mLayoutHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-int v8, v2

    .line 299
    .local v8, "temp":I
    const/4 v2, 0x0

    neg-int v3, v8

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcn/jingling/lib/textbubble/TextBubbleControl;->translateImageView(FF)V

    .line 300
    iput v8, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    .line 306
    .end local v8    # "temp":I
    :goto_0
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v2, v3}, Lcn/jingling/lib/textbubble/AccessoryFlag;->show(I)V

    .line 308
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->inValidateImageView()V

    .line 311
    const/4 v2, -0x1

    iput v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 312
    add-int/lit8 v2, v6, -0x1

    iput v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 313
    return-object v0

    .line 303
    :cond_1
    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    int-to-float v2, v2

    iget v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcn/jingling/lib/textbubble/TextBubbleControl;->translateImageView(FF)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 469
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 470
    return-void
.end method

.method public clearAddingAccessory()V
    .locals 6

    .prologue
    .line 380
    :try_start_0
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/AccessoryFlag;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/jingling/lib/textbubble/ScreenControl;->removeView(Landroid/view/View;)V

    .line 382
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 384
    :cond_0
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    if-eqz v4, :cond_1

    .line 385
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/jingling/lib/textbubble/ScreenControl;->removeView(Landroid/view/View;)V

    .line 386
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    .line 389
    :cond_1
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 390
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 392
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 394
    .local v0, "arrayListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 399
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 400
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 404
    .end local v0    # "arrayListSize":I
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 395
    .restart local v0    # "arrayListSize":I
    .restart local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jingling/lib/textbubble/ImageControl;

    .line 396
    .local v3, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/ImageControl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "arrayListSize":I
    .end local v2    # "i":I
    .end local v3    # "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public clearAddingText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 448
    const/4 v3, 0x0

    iput v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->addValue:I

    .line 449
    const/4 v3, -0x1

    iput v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 451
    iput-object v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 453
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    if-eqz v3, :cond_0

    .line 454
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/AccessoryFlag;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/jingling/lib/textbubble/ScreenControl;->removeView(Landroid/view/View;)V

    .line 455
    iput-object v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 457
    :cond_0
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 458
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 460
    .local v0, "arrayListSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 464
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 465
    iput-object v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 466
    return-void

    .line 461
    :cond_1
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/ImageControl;

    .line 462
    .local v2, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ImageControl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public deleteAccessory(I)V
    .locals 3
    .param p1, "arrayListId"    # I

    .prologue
    .line 331
    const/4 v2, -0x1

    iput v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->currentShow:I

    .line 332
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/ImageControl;

    .line 333
    .local v0, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    iget-object v1, v0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 337
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 340
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->initialAddingAccessoryState()V

    .line 341
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/AccessoryFlag;->hide()V

    .line 342
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->hide()V

    .line 343
    check-cast v0, Lcn/jingling/lib/textbubble/AccessoryImage;

    .end local v0    # "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-direct {p0, v0}, Lcn/jingling/lib/textbubble/ScreenControl;->callBackAccessoryDeleted(Lcn/jingling/lib/textbubble/AccessoryImage;)V

    .line 344
    return-void
.end method

.method public deleteAccessory(Lcn/jingling/lib/textbubble/ImageControl;)V
    .locals 2
    .param p1, "imageControl"    # Lcn/jingling/lib/textbubble/ImageControl;

    .prologue
    .line 347
    const/4 v1, -0x1

    iput v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->currentShow:I

    .line 348
    iget-object v0, p1, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 352
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->initialAddingAccessoryState()V

    .line 357
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/AccessoryFlag;->hide()V

    .line 358
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->hide()V

    .line 359
    check-cast p1, Lcn/jingling/lib/textbubble/AccessoryImage;

    .end local p1    # "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-direct {p0, p1}, Lcn/jingling/lib/textbubble/ScreenControl;->callBackAccessoryDeleted(Lcn/jingling/lib/textbubble/AccessoryImage;)V

    .line 360
    return-void
.end method

.method public deleteText(I)V
    .locals 5
    .param p1, "arrayListId"    # I

    .prologue
    const/4 v4, -0x1

    .line 426
    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->currentShow:I

    .line 428
    iget-boolean v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    if-eqz v2, :cond_0

    .line 429
    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextBoxId:I

    .line 430
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsKeepSelected:Z

    .line 431
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->leaveEditing()V

    .line 433
    :cond_0
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 434
    .local v0, "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    iget-object v1, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    .line 436
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 439
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 441
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->initialAddingAccessoryState()V

    .line 442
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/AccessoryFlag;->hide()V

    .line 444
    iput v4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->selectTextBubbleID:I

    .line 445
    return-void
.end method

.method public drawInkCanvas(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 599
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 600
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Lcn/jingling/lib/textbubble/MyPaint;

    invoke-direct {v1}, Lcn/jingling/lib/textbubble/MyPaint;-><init>()V

    .line 601
    .local v1, "paint":Lcn/jingling/lib/textbubble/MyPaint;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 603
    return-void
.end method

.method public findTextTouchedViewId(Lcn/jingling/lib/textbubble/MyPoint;)I
    .locals 5
    .param p1, "point"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    const/16 v4, 0xa

    .line 1016
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingText:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1017
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v3, p1, v4}, Lcn/jingling/lib/textbubble/AccessoryFlag;->isContainPoint(Lcn/jingling/lib/textbubble/MyPoint;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1018
    const/4 v1, -0x2

    .line 1038
    :goto_0
    return v1

    .line 1020
    :cond_0
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    invoke-virtual {v3, p1, v4}, Lcn/jingling/lib/textbubble/AccessoryFlag;->isContainPointDel(Lcn/jingling/lib/textbubble/MyPoint;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1021
    const-string v3, "ScreenControl"

    const-string v4, "at del btn"

    invoke-static {v3, v4}, Lcn/jingling/lib/textbubble/Pwog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const/4 v1, -0x3

    goto :goto_0

    .line 1026
    :cond_1
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1028
    .local v0, "arrayListSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_2

    .line 1038
    const/4 v1, -0x1

    goto :goto_0

    .line 1029
    :cond_2
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/ImageControl;

    .line 1030
    .local v2, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ImageControl;->isControlEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1028
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1033
    :cond_4
    invoke-virtual {v2, p1, v4}, Lcn/jingling/lib/textbubble/ImageControl;->isContainPoint(Lcn/jingling/lib/textbubble/MyPoint;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getBitmapHasAccessory()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->getBitmapHasAccessory(Ljava/util/List;Lcn/jingling/lib/textbubble/MyPaint;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapHasAccessory(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/jingling/lib/textbubble/ImageControl;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "accessoryList":Ljava/util/List;, "Ljava/util/List<Lcn/jingling/lib/textbubble/ImageControl;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getBitmapHasAccessory(Ljava/util/List;Lcn/jingling/lib/textbubble/MyPaint;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapHasAccessory(Ljava/util/List;Lcn/jingling/lib/textbubble/MyPaint;)Landroid/graphics/Bitmap;
    .locals 10
    .param p2, "extraPaint"    # Lcn/jingling/lib/textbubble/MyPaint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/jingling/lib/textbubble/ImageControl;",
            ">;",
            "Lcn/jingling/lib/textbubble/MyPaint;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "accessoryList":Ljava/util/List;, "Ljava/util/List<Lcn/jingling/lib/textbubble/ImageControl;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 518
    :cond_0
    const/4 v9, 0x0

    .line 543
    :goto_0
    return-object v9

    .line 521
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v9}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 522
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Lcn/jingling/lib/textbubble/MyPaint;

    invoke-direct {v8}, Lcn/jingling/lib/textbubble/MyPaint;-><init>()V

    .line 523
    .local v8, "paint":Lcn/jingling/lib/textbubble/MyPaint;
    if-eqz p2, :cond_2

    .line 524
    invoke-virtual {v8, p2}, Lcn/jingling/lib/textbubble/MyPaint;->set(Landroid/graphics/Paint;)V

    .line 527
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 528
    .local v1, "arrayListSize":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 529
    .local v7, "matrix1":Landroid/graphics/Matrix;
    iget-object v9, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v9}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 530
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v1, :cond_3

    .line 543
    iget-object v9, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v9}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 532
    :cond_3
    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jingling/lib/textbubble/ImageControl;

    .line 533
    .local v5, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-virtual {v5}, Lcn/jingling/lib/textbubble/ImageControl;->getAlpha()I

    move-result v0

    .line 534
    .local v0, "alpha":I
    invoke-virtual {v8, v0}, Lcn/jingling/lib/textbubble/MyPaint;->setAlpha(I)V

    .line 535
    invoke-virtual {v5}, Lcn/jingling/lib/textbubble/ImageControl;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 536
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 537
    invoke-virtual {v5}, Lcn/jingling/lib/textbubble/ImageControl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2, v9, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "alpha":I
    .end local v5    # "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 538
    :catch_0
    move-exception v3

    .line 540
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getBitmapHasText(Ljava/util/List;Lcn/jingling/lib/textbubble/MyPaint;)Landroid/graphics/Bitmap;
    .locals 14
    .param p2, "extraPaint"    # Lcn/jingling/lib/textbubble/MyPaint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/jingling/lib/textbubble/ImageControl;",
            ">;",
            "Lcn/jingling/lib/textbubble/MyPaint;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "accessoryList":Ljava/util/List;, "Ljava/util/List<Lcn/jingling/lib/textbubble/ImageControl;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 554
    :cond_0
    const/4 v12, 0x0

    .line 594
    :goto_0
    return-object v12

    .line 557
    :cond_1
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v12, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v12}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 558
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Lcn/jingling/lib/textbubble/MyPaint;

    invoke-direct {v10}, Lcn/jingling/lib/textbubble/MyPaint;-><init>()V

    .line 559
    .local v10, "paint":Lcn/jingling/lib/textbubble/MyPaint;
    if-eqz p2, :cond_2

    .line 560
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcn/jingling/lib/textbubble/MyPaint;->set(Landroid/graphics/Paint;)V

    .line 563
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 564
    .local v2, "arrayListSize":I
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 565
    .local v9, "matrix1":Landroid/graphics/Matrix;
    iget-object v12, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v12}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 566
    const/4 v7, 0x0

    .line 567
    .local v7, "mTextBubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    const/4 v11, 0x0

    .line 568
    .local v11, "tBubble":Lcn/jingling/lib/textbubble/TextBubble;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v2, :cond_3

    .line 594
    iget-object v12, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v12}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_0

    .line 570
    :cond_3
    :try_start_0
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcn/jingling/lib/textbubble/TextBubbleControl;

    move-object v7, v0

    .line 571
    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getAlpha()I

    move-result v1

    .line 572
    .local v1, "alpha":I
    invoke-virtual {v10, v1}, Lcn/jingling/lib/textbubble/MyPaint;->setAlpha(I)V

    .line 573
    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 574
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 575
    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getmTextPara()Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    move-result-object v12

    iget-object v12, v12, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mFileName:Ljava/lang/String;

    const-string v13, "bubble01.png"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 576
    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getmTextPara()Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    move-result-object v12

    iget-object v12, v12, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mFileName:Ljava/lang/String;

    const-string v13, "bubble02.png"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 577
    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v4, v12, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 580
    :cond_4
    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v11

    .line 581
    invoke-virtual {v11}, Lcn/jingling/lib/textbubble/TextBubble;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 582
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcn/jingling/lib/textbubble/TextBubble;->setDrawingCacheEnabled(Z)V

    .line 583
    invoke-virtual {v11}, Lcn/jingling/lib/textbubble/TextBubble;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 584
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_5

    .line 585
    invoke-virtual {v4, v3, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 586
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 588
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/jingling/lib/textbubble/TextBubble;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v1    # "alpha":I
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 590
    :catch_0
    move-exception v5

    .line 591
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getGestureDetector()Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    return-object v0
.end method

.method public getGroundImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGroundImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getmAccessoryFlag()Lcn/jingling/lib/textbubble/AccessoryFlag;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    return-object v0
.end method

.method public getmAccessoryMiddle()Lcn/jingling/lib/textbubble/AccessoryMiddle;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    return-object v0
.end method

.method public getmActionIsUp()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getmGroundImage()Lcn/jingling/lib/textbubble/GroundImage;
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    return-object v0
.end method

.method public getmImageControlArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jingling/lib/textbubble/ImageControl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIsAddingAccessory()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingAccessory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getmIsAddingFrame()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingFrame:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getmIsAddingText()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingText:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getmRelativeLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hideAllView()V
    .locals 4

    .prologue
    .line 1086
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsShapeShow:Ljava/lang/Boolean;

    .line 1087
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1094
    :cond_0
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->callBackHideAllAccessories()V

    .line 1095
    return-void

    .line 1089
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/ImageControl;

    .line 1091
    .local v0, "ic":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ImageControl;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initWithActivity(Landroid/app/Activity;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "imageContainer"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 122
    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    sput v0, Lcn/jingling/lib/textbubble/ScreenControl;->mLayoutWidth:I

    .line 123
    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sput v0, Lcn/jingling/lib/textbubble/ScreenControl;->mLayoutHeight:I

    .line 124
    const-string v0, "ScreenControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " screen contrl layoutwidth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcn/jingling/lib/textbubble/ScreenControl;->mLayoutWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " layoutheight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/jingling/lib/textbubble/ScreenControl;->mLayoutHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    .line 131
    if-nez p2, :cond_0

    .line 132
    const-string v0, "ScreenControl"

    const-string v1, "Bitmap NULL"

    invoke-static {v0, v1}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    new-instance v0, Lcn/jingling/lib/textbubble/GroundImage;

    invoke-direct {v0, p3, p2}, Lcn/jingling/lib/textbubble/GroundImage;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    .line 141
    iput-object p4, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->initializeData()Z

    .line 146
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGestureDetector:Landroid/view/GestureDetector;

    .line 147
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->obtainControl()V

    .line 152
    return-void
.end method

.method public initialAddingAccessoryState()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->firstId:I

    .line 364
    iput v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->viewId:I

    .line 365
    return-void
.end method

.method public initializeAddingAccessory()V
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryoperater:I

    iget v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessory_del:I

    invoke-direct {p0, v0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->initializeAccessoryFlag(II)V

    .line 171
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->initializeAccessoryMiddle()V

    .line 172
    return-void
.end method

.method public initializeAddingText()V
    .locals 10

    .prologue
    const/4 v0, -0x2

    .line 407
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 408
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 409
    .local v1, "viewMove":Landroid/widget/ImageView;
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 411
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryoperater:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 412
    .local v9, "picMove":Landroid/graphics/drawable/Drawable;
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "picMove":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 414
    .local v2, "bitmapMove":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 415
    .local v3, "btnDel":Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 417
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessory_del:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 418
    .local v8, "picDel":Landroid/graphics/drawable/Drawable;
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "picDel":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 420
    .local v4, "bmDel":Landroid/graphics/Bitmap;
    new-instance v0, Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 421
    iget-object v5, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    .line 422
    iget-object v6, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/textbubble/AccessoryFlag;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/graphics/Bitmap;II)V

    .line 420
    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 423
    return-void
.end method

.method public leaveEditing()V
    .locals 1

    .prologue
    .line 1482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    .line 1484
    return-void
.end method

.method public leaveEditing(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1487
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    .line 1497
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 1498
    iget v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextBoxId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jingling/lib/textbubble/TextBubbleControl;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v0

    .line 1500
    .local v0, "tb":Lcn/jingling/lib/textbubble/TextBubble;
    invoke-virtual {v0, p1}, Lcn/jingling/lib/textbubble/TextBubble;->setText(Ljava/lang/CharSequence;)V

    .line 1509
    return-void
.end method

.method public obtainControl()V
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->initializeData()Z

    .line 157
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 159
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEditing(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1512
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsEditingText:Z

    .line 1513
    iput p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mTextBoxId:I

    .line 1514
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 1515
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jingling/lib/textbubble/TextBubbleControl;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;

    move-result-object v0

    .line 1522
    .local v0, "tb":Lcn/jingling/lib/textbubble/TextBubble;
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mOnEditingCallback:Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/TextBubble;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;->onEditingNewActivity(Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1436
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    .line 1437
    iget-object v7, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1438
    const/4 v7, 0x1

    .line 1475
    :goto_0
    return v7

    .line 1440
    :cond_0
    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v7, p2}, Lcn/jingling/lib/textbubble/PwMotion;->setEvent(Landroid/view/MotionEvent;)V

    .line 1441
    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/PwMotion;->getAction()I

    move-result v0

    .line 1442
    .local v0, "action":I
    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/PwMotion;->getPointerCount()I

    move-result v4

    .line 1452
    .local v4, "pointerCnt":I
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 1453
    :try_start_0
    new-instance v3, Lcn/jingling/lib/textbubble/MyPoint;

    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcn/jingling/lib/textbubble/PwMotion;->getX(I)D

    move-result-wide v8

    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcn/jingling/lib/textbubble/PwMotion;->getY(I)D

    move-result-wide v10

    invoke-direct {v3, v8, v9, v10, v11}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(DD)V

    .line 1454
    .local v3, "point":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v6, Lcn/jingling/lib/textbubble/TouchParameter;

    const/4 v8, 0x1

    .line 1455
    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1454
    invoke-direct {v6, v8, v3, v3, v7}, Lcn/jingling/lib/textbubble/TouchParameter;-><init>(ILcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Ljava/lang/Boolean;)V

    .line 1456
    .local v6, "touchParameter":Lcn/jingling/lib/textbubble/TouchParameter;
    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/ScreenControl;->updateView(Lcn/jingling/lib/textbubble/TouchParameter;)V

    .line 1475
    .end local v3    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    .end local v6    # "touchParameter":Lcn/jingling/lib/textbubble/TouchParameter;
    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    .line 1455
    .restart local v3    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1459
    .end local v3    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_2
    new-instance v2, Lcn/jingling/lib/textbubble/MyPoint;

    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcn/jingling/lib/textbubble/PwMotion;->getX(I)D

    move-result-wide v8

    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcn/jingling/lib/textbubble/PwMotion;->getY(I)D

    move-result-wide v10

    invoke-direct {v2, v8, v9, v10, v11}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(DD)V

    .line 1460
    .local v2, "firstPointer":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v5, Lcn/jingling/lib/textbubble/MyPoint;

    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcn/jingling/lib/textbubble/PwMotion;->getX(I)D

    move-result-wide v8

    sget-object v7, Lcn/jingling/lib/textbubble/ScreenControl;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcn/jingling/lib/textbubble/PwMotion;->getY(I)D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(DD)V

    .line 1462
    .local v5, "secondPointer":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v6, Lcn/jingling/lib/textbubble/TouchParameter;

    .line 1464
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1462
    invoke-direct {v6, v4, v2, v5, v7}, Lcn/jingling/lib/textbubble/TouchParameter;-><init>(ILcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Ljava/lang/Boolean;)V

    .line 1465
    .restart local v6    # "touchParameter":Lcn/jingling/lib/textbubble/TouchParameter;
    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/ScreenControl;->updateView(Lcn/jingling/lib/textbubble/TouchParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1467
    .end local v2    # "firstPointer":Lcn/jingling/lib/textbubble/MyPoint;
    .end local v5    # "secondPointer":Lcn/jingling/lib/textbubble/MyPoint;
    .end local v6    # "touchParameter":Lcn/jingling/lib/textbubble/TouchParameter;
    :catch_0
    move-exception v1

    .line 1469
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1464
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "firstPointer":Lcn/jingling/lib/textbubble/MyPoint;
    .restart local v5    # "secondPointer":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 1470
    .end local v2    # "firstPointer":Lcn/jingling/lib/textbubble/MyPoint;
    .end local v5    # "secondPointer":Lcn/jingling/lib/textbubble/MyPoint;
    :catch_1
    move-exception v1

    .line 1472
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 486
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 492
    :cond_0
    iput-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    .line 495
    :cond_1
    iput-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 497
    iput-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    .line 499
    iput-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 501
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingAccessory:Ljava/lang/Boolean;

    .line 502
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingText:Ljava/lang/Boolean;

    .line 505
    sput-object v1, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleton:Lcn/jingling/lib/textbubble/ScreenControl;

    .line 506
    return-void
.end method

.method public removeCutCanvas()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 370
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 371
    return-void
.end method

.method public removeLoopForRemoveAcneCanvas()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 375
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 376
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 474
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 478
    .local v0, "count":I
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 480
    .local v1, "index":I
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 481
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAccessoryDrawableRes(II)V
    .locals 0
    .param p1, "operaterDrawableRes"    # I
    .param p2, "delDrawableRes"    # I

    .prologue
    .line 1606
    iput p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryoperater:I

    .line 1607
    iput p2, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessory_del:I

    .line 1608
    return-void
.end method

.method public setGroundImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 614
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/textbubble/GroundImage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 615
    return-void
.end method

.method public setOnEditingCallback(Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;

    .prologue
    .line 1602
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mOnEditingCallback:Lcn/jingling/lib/textbubble/TextBubbleWidget$onEditingCallback;

    .line 1603
    return-void
.end method

.method public setmAccessoryFlag(Lcn/jingling/lib/textbubble/AccessoryFlag;)V
    .locals 0
    .param p1, "mAccessoryFlag"    # Lcn/jingling/lib/textbubble/AccessoryFlag;

    .prologue
    .line 1383
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryFlag:Lcn/jingling/lib/textbubble/AccessoryFlag;

    .line 1384
    return-void
.end method

.method public setmAccessoryMiddle(Lcn/jingling/lib/textbubble/AccessoryMiddle;)V
    .locals 0
    .param p1, "mAccessoryMiddle"    # Lcn/jingling/lib/textbubble/AccessoryMiddle;

    .prologue
    .line 1391
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mAccessoryMiddle:Lcn/jingling/lib/textbubble/AccessoryMiddle;

    .line 1392
    return-void
.end method

.method public setmActionIsUp(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mActionIsUp"    # Ljava/lang/Boolean;

    .prologue
    .line 1429
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    .line 1430
    return-void
.end method

.method public setmActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 1367
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mActivity:Landroid/app/Activity;

    .line 1368
    return-void
.end method

.method public setmGroundImage(Lcn/jingling/lib/textbubble/GroundImage;)V
    .locals 0
    .param p1, "mGroundImage"    # Lcn/jingling/lib/textbubble/GroundImage;

    .prologue
    .line 1354
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    .line 1355
    return-void
.end method

.method public setmImageControlArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jingling/lib/textbubble/ImageControl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1363
    .local p1, "mImageControlArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/jingling/lib/textbubble/ImageControl;>;"
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 1364
    return-void
.end method

.method public setmIsAddingAccessory(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mIsAddingAccessory"    # Ljava/lang/Boolean;

    .prologue
    .line 1399
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingAccessory:Ljava/lang/Boolean;

    .line 1400
    return-void
.end method

.method public setmIsAddingBlush(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mIsAddingAccessory"    # Ljava/lang/Boolean;

    .prologue
    .line 1402
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingBlush:Ljava/lang/Boolean;

    .line 1403
    return-void
.end method

.method public setmIsAddingFrame(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "is"    # Ljava/lang/Boolean;

    .prologue
    .line 1417
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingFrame:Ljava/lang/Boolean;

    .line 1418
    return-void
.end method

.method public setmIsAddingText(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mIsAddingText"    # Ljava/lang/Boolean;

    .prologue
    .line 1413
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingText:Ljava/lang/Boolean;

    .line 1414
    return-void
.end method

.method public setmIsShape(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mIsShape"    # Ljava/lang/Boolean;

    .prologue
    .line 1405
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsShape:Ljava/lang/Boolean;

    .line 1406
    return-void
.end method

.method public setmRelativeLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "mRelativeLayout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 1375
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 1376
    return-void
.end method

.method public showAllView()V
    .locals 4

    .prologue
    .line 1099
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsShapeShow:Ljava/lang/Boolean;

    .line 1100
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1107
    :cond_0
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/ScreenControl;->callBackShowAllAccessories()V

    .line 1108
    return-void

    .line 1102
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/ImageControl;

    .line 1104
    .local v0, "ic":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ImageControl;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public sig(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x0

    .line 1325
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 1326
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1330
    :cond_0
    :goto_0
    return v0

    .line 1327
    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 1328
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public singleTapped()V
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ScreenControl;->mSingleTapped:Ljava/lang/Boolean;

    .line 691
    return-void
.end method

.method public updateView(Lcn/jingling/lib/textbubble/TouchParameter;)V
    .locals 18
    .param p1, "touchParameter"    # Lcn/jingling/lib/textbubble/TouchParameter;

    .prologue
    .line 695
    move-object/from16 v0, p1

    iget v14, v0, Lcn/jingling/lib/textbubble/TouchParameter;->pointerCnt:I

    .line 696
    .local v14, "pointerCnt":I
    const-string v2, "ScreenControl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pointerCnt: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v12, 0x0

    .line 698
    .local v12, "dx":F
    const/4 v13, 0x0

    .line 699
    .local v13, "dy":F
    const/high16 v15, 0x3f800000    # 1.0f

    .line 700
    .local v15, "scale":F
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 701
    .local v10, "rotate":D
    const/4 v9, 0x0

    .line 703
    .local v9, "centerPoint":Lcn/jingling/lib/textbubble/MyPoint;
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mPointerCnt:I

    if-eq v14, v2, :cond_0

    .line 705
    move-object/from16 v0, p0

    iput v14, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mPointerCnt:I

    .line 706
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstOnePointer:Ljava/lang/Boolean;

    .line 707
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstTwoPointer:Ljava/lang/Boolean;

    .line 710
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/jingling/lib/textbubble/TouchParameter;->isUp:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mPointerCnt:I

    .line 713
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    .line 719
    :goto_0
    const/4 v2, 0x1

    if-ne v14, v2, :cond_4

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstOnePointer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    move v4, v13

    .end local v13    # "dy":F
    .local v4, "dy":F
    move v3, v12

    .line 729
    .end local v12    # "dx":F
    .local v3, "dx":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    move v5, v15

    .line 806
    .end local v15    # "scale":F
    .local v5, "scale":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstOnePointer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstTwoPointer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 807
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstOnePointer:Ljava/lang/Boolean;

    .line 808
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstTwoPointer:Ljava/lang/Boolean;

    .line 809
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->switchView:Ljava/lang/Boolean;

    .line 814
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mIsAddingText:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 815
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->switchView:Ljava/lang/Boolean;

    move-object/from16 v2, p0

    move v7, v14

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v11}, Lcn/jingling/lib/textbubble/ScreenControl;->updateAddingTextBox(FFFLjava/lang/Boolean;ILcn/jingling/lib/textbubble/TouchParameter;Lcn/jingling/lib/textbubble/MyPoint;D)V

    .line 820
    :goto_4
    return-void

    .line 716
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "scale":F
    .restart local v12    # "dx":F
    .restart local v13    # "dy":F
    .restart local v15    # "scale":F
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mActionIsUp:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 725
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float v3, v2, v6

    .line 726
    .end local v12    # "dx":F
    .restart local v3    # "dx":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, v2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float v4, v2, v6

    .end local v13    # "dy":F
    .restart local v4    # "dy":F
    goto/16 :goto_1

    .line 736
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .restart local v12    # "dx":F
    .restart local v13    # "dy":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mFirstTwoPointer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 737
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFirstRotate:Z

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->secondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-static {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->distance(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldDist:F

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    float-to-double v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    iget v8, v8, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    float-to-double v8, v8

    invoke-static/range {v2 .. v9}, Lcn/jingling/lib/textbubble/PointsCaculation;->caculateTwoPointsAngle(DDDD)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldAngel:D

    .line 742
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldDist:F

    const/high16 v6, 0x41a00000    # 20.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_d

    .line 743
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mode:I

    move v5, v15

    .end local v15    # "scale":F
    .restart local v5    # "scale":F
    move v4, v13

    .end local v13    # "dy":F
    .restart local v4    # "dy":F
    move v3, v12

    .line 785
    .end local v12    # "dx":F
    .restart local v3    # "dx":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->secondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    add-float/2addr v2, v6

    neg-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    .line 791
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v7, v7, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 790
    add-float v3, v2, v6

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, v2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    add-float/2addr v2, v6

    neg-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    .line 793
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v7, v7, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 792
    add-float v4, v2, v6

    .line 795
    new-instance v9, Lcn/jingling/lib/textbubble/MyPoint;

    .end local v9    # "centerPoint":Lcn/jingling/lib/textbubble/MyPoint;
    invoke-direct {v9}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 796
    .restart local v9    # "centerPoint":Lcn/jingling/lib/textbubble/MyPoint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    add-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    iput v2, v9, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, v2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    add-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    iput v2, v9, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newFirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newSecondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 802
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newDist:F

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldDist:F

    .line 803
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newAngel:D

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldAngel:D

    goto/16 :goto_2

    .line 747
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "scale":F
    .restart local v12    # "dx":F
    .restart local v13    # "dy":F
    .restart local v15    # "scale":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/jingling/lib/textbubble/TouchParameter;->secondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-virtual {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    invoke-static {v2, v6}, Lcn/jingling/lib/textbubble/MyPoint;->distance(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newDist:F

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer0:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    float-to-double v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    iget v6, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newPointer1:Lcn/jingling/lib/textbubble/MyPoint;

    iget v8, v8, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    float-to-double v8, v8

    invoke-static/range {v2 .. v9}, Lcn/jingling/lib/textbubble/PointsCaculation;->caculateTwoPointsAngle(DDDD)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newAngel:D

    .line 753
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFirstRotate:Z

    if-eqz v2, :cond_7

    .line 755
    const-wide/16 v10, 0x0

    .line 756
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->isFirstRotate:Z

    .line 764
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newDist:F

    const/high16 v6, 0x41a00000    # 20.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_d

    .line 766
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newDist:F

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldDist:F

    div-float v5, v2, v6

    .line 767
    .end local v15    # "scale":F
    .restart local v5    # "scale":F
    const v2, 0x3f866666    # 1.05f

    cmpl-float v2, v5, v2

    if-lez v2, :cond_8

    .line 768
    const v5, 0x3f866666    # 1.05f

    .line 775
    :cond_6
    :goto_7
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x42480000    # 50.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_c

    .line 776
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcn/jingling/lib/textbubble/ScreenControl;->sig(F)F

    move-result v6

    mul-float v3, v2, v6

    .line 779
    .end local v12    # "dx":F
    .restart local v3    # "dx":F
    :goto_8
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x42480000    # 50.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_b

    .line 780
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/jingling/lib/textbubble/ScreenControl;->sig(F)F

    move-result v6

    mul-float v4, v2, v6

    .end local v13    # "dy":F
    .restart local v4    # "dy":F
    goto/16 :goto_5

    .line 760
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "scale":F
    .restart local v12    # "dx":F
    .restart local v13    # "dy":F
    .restart local v15    # "scale":F
    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/jingling/lib/textbubble/ScreenControl;->newAngel:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/jingling/lib/textbubble/ScreenControl;->oldAngel:D

    move-wide/from16 v16, v0

    sub-double v10, v6, v16

    goto :goto_6

    .line 769
    .end local v15    # "scale":F
    .restart local v5    # "scale":F
    :cond_8
    float-to-double v6, v5

    const-wide v16, 0x3fee79e7b5b236a3L    # 0.9523809956314903

    cmpg-double v2, v6, v16

    if-gez v2, :cond_6

    .line 770
    const v5, 0x3f73cf3e

    goto :goto_7

    .line 811
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    .restart local v3    # "dx":F
    .restart local v4    # "dy":F
    :cond_9
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/ScreenControl;->switchView:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_a
    move-object/from16 v2, p0

    move v6, v14

    move-object v7, v9

    .line 818
    invoke-direct/range {v2 .. v7}, Lcn/jingling/lib/textbubble/ScreenControl;->updateOnlyGround(FFFILcn/jingling/lib/textbubble/MyPoint;)V

    goto/16 :goto_4

    .end local v4    # "dy":F
    .restart local v13    # "dy":F
    :cond_b
    move v4, v13

    .end local v13    # "dy":F
    .restart local v4    # "dy":F
    goto/16 :goto_5

    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .restart local v12    # "dx":F
    .restart local v13    # "dy":F
    :cond_c
    move v3, v12

    .end local v12    # "dx":F
    .restart local v3    # "dx":F
    goto :goto_8

    .end local v3    # "dx":F
    .end local v5    # "scale":F
    .restart local v12    # "dx":F
    .restart local v15    # "scale":F
    :cond_d
    move v5, v15

    .end local v15    # "scale":F
    .restart local v5    # "scale":F
    move v4, v13

    .end local v13    # "dy":F
    .restart local v4    # "dy":F
    move v3, v12

    .end local v12    # "dx":F
    .restart local v3    # "dx":F
    goto/16 :goto_5
.end method
