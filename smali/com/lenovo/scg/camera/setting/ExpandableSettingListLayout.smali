.class public Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;
.super Lcom/lenovo/scg/camera/ui/RotateLayout;
.source "ExpandableSettingListLayout.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;,
        Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;
    }
.end annotation


# static fields
.field public static final CAMERA_RESTORESCENE_MODE_FLAG:Ljava/lang/String; = "isRestoreScene"

.field private static final IDLE:I = 0x1

.field private static final TAB_COMMON_KEY:Ljava/lang/String; = "common"

.field private static final TAB_OTHER_KEY:Ljava/lang/String; = "other"

.field private static final TAB_VIDEO_KEY:Ljava/lang/String; = "extend"

.field private static final TAG:Ljava/lang/String; = "ExpandableSettingListLayout"


# instance fields
.field final GESTURE_DOWN:I

.field final GESTURE_LEFT:I

.field final GESTURE_RIGHT:I

.field final GESTURE_UP:I

.field private backFront:[I

.field currentPosition:I

.field private expandableList:Landroid/widget/ExpandableListView;

.field private group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

.field holder:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

.field private icons:[I

.field isLastRow:Z

.field listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mClickedListener:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

.field private mCommonLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mExtendLayout:Landroid/widget/RelativeLayout;

.field mGesture:I

.field mIconListPreferencesHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;",
            ">;"
        }
    .end annotation
.end field

.field mInvalidateHandler:Landroid/os/Handler;

.field protected mListFadeIn:Landroid/view/animation/Animation;

.field protected mListFadeOut:Landroid/view/animation/Animation;

.field protected mMenuFadeIn:Landroid/view/animation/Animation;

.field protected mMenuFadeOut:Landroid/view/animation/Animation;

.field private mMenuLayout:Landroid/widget/RelativeLayout;

.field private mOtherLayout:Landroid/widget/RelativeLayout;

.field private mToast:Landroid/widget/Toast;

.field private myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

.field private scene:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->listItem:Ljava/util/ArrayList;

    .line 367
    iput v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCount:I

    .line 456
    new-instance v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$2;-><init>(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mInvalidateHandler:Landroid/os/Handler;

    .line 540
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->isLastRow:Z

    .line 542
    iput v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    .line 581
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    .line 583
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->GESTURE_UP:I

    .line 585
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->GESTURE_DOWN:I

    .line 587
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->GESTURE_LEFT:I

    .line 589
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->GESTURE_RIGHT:I

    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mContext:Landroid/content/Context;

    .line 98
    const v0, 0x7f05000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuFadeIn:Landroid/view/animation/Animation;

    .line 99
    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuFadeOut:Landroid/view/animation/Animation;

    .line 100
    const v0, 0x7f050009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mListFadeIn:Landroid/view/animation/Animation;

    .line 101
    const v0, 0x7f05000a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mListFadeOut:Landroid/view/animation/Animation;

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$1;-><init>(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    return-object v0
.end method


# virtual methods
.method public changeItem(I)V
    .locals 3
    .param p1, "scrollState"    # I

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->isLastRow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    if-lez v0, :cond_0

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->isLastRow:Z

    .line 623
    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    packed-switch v0, :pswitch_data_0

    .line 639
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    .line 642
    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    packed-switch v0, :pswitch_data_1

    .line 655
    :goto_1
    const-string/jumbo v0, "scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeItem()  scrollState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentPosition =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    return-void

    .line 625
    :pswitch_0
    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    goto :goto_0

    .line 628
    :pswitch_1
    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    goto :goto_0

    .line 631
    :pswitch_2
    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    goto :goto_0

    .line 634
    :pswitch_3
    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    goto :goto_0

    .line 644
    :pswitch_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->onPictureSettingGroupClicked()V

    goto :goto_1

    .line 647
    :pswitch_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->onVideoSettingGroupClicked()V

    goto :goto_1

    .line 650
    :pswitch_6
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->onOtherSettingGroupClicked()V

    goto :goto_1

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 642
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getGroupChildCount()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCount:I

    return v0
.end method

.method public getPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    .locals 2
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 535
    .local v0, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 536
    .end local v0    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    :cond_0
    return-object v0
.end method

.method public hideAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .param p1, "mAnimationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->clearAnimation()V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mListFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mListFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    return-void
.end method

.method public init(Lcom/lenovo/scg/camera/setting/CameraSettingController;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "Info"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mAnimationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 183
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->initdate()V

    .line 184
    iget v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->initGroupdata(I)V

    .line 185
    const-string v0, "ExpandableSettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dongxt init icons.len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->icons:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", backFront.len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->backFront:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->listItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Landroid/content/Context;Ljava/util/ArrayList;Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->icons:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->backFront:[I

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->scene:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->init([I[I[I)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 195
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->showAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mExtendLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mOtherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCommonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method public initGroupdata(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mIconListPreferencesHolders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mIconListPreferencesHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->holder:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->holder:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    iget-object v2, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingtitle:[I

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->holder:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingKeys:[Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->holder:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingIconids:[I

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->holder:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    iget-object v5, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingBackFront:[I

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->holder:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    iget-object v6, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingScene:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;[I[Ljava/lang/String;[I[I[I)V

    goto :goto_0
.end method

.method public initdate()V
    .locals 10

    .prologue
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mIconListPreferencesHolders:Ljava/util/List;

    .line 136
    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mIconListPreferencesHolders:Ljava/util/List;

    new-instance v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    const-string v2, "common"

    const v3, 0x7f0f05c3

    sget-object v4, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_KEYS_V4:[Ljava/lang/String;

    sget-object v5, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_TILDS_V4:[I

    sget-object v6, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_ICON_IDS_V4:[I

    sget-object v7, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_BACK_OR_FRONT_V4:[I

    sget-object v8, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_FOR_SCENE_V4:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;-><init>(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;Ljava/lang/String;I[Ljava/lang/String;[I[I[I[I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mIconListPreferencesHolders:Ljava/util/List;

    new-instance v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    const-string v2, "extend"

    const v3, 0x7f0f05c4

    sget-object v4, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB_V4:[Ljava/lang/String;

    sget-object v5, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_TITLE_FOR_TAB_V4:[I

    sget-object v6, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_IMAGE_FOR_TAB_V4:[I

    sget-object v7, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB_FRONT_OR_BACK_V4:[I

    sget-object v8, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB_SCENE_V4:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;-><init>(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;Ljava/lang/String;I[Ljava/lang/String;[I[I[I[I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mIconListPreferencesHolders:Ljava/util/List;

    new-instance v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;

    const-string/jumbo v2, "other"

    const v3, 0x7f0f05c5

    invoke-static {}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->GetOtherKeys()[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_TITLE_FOR_TAB_V4:[I

    sget-object v6, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_IMAGE_FOR_TAB_V4:[I

    sget-object v7, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_FRONT_OR_BACK_V4:[I

    sget-object v8, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_SCENE_V4:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;-><init>(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;Ljava/lang/String;I[Ljava/lang/String;[I[I[I[I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;[I[Ljava/lang/String;[I[I[I)V
    .locals 25
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p2, "titleid"    # [I
    .param p3, "keys"    # [Ljava/lang/String;
    .param p4, "Iconids"    # [I
    .param p5, "backFront"    # [I
    .param p6, "scene"    # [I

    .prologue
    .line 699
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->listItem:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 702
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->backFront:[I

    .line 703
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->scene:[I

    .line 704
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->backFront:[I

    .line 705
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->scene:[I

    .line 706
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->icons:[I

    .line 707
    const/4 v4, 0x0

    .line 708
    .local v4, "id":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_a

    .line 710
    aget-object v22, p3, v3

    const-string v23, "camera_setting_about_info_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 711
    .local v5, "isAbout":Z
    aget-object v22, p3, v3

    const-string v23, "camera_setting_developer_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 712
    .local v9, "isDeveloper":Z
    const-string v22, "isDeveloper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, p3, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    aget-object v22, p3, v3

    const-string v23, "camera_setting_reset_to_default_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 716
    .local v13, "isReset":Z
    aget-object v22, p3, v3

    const-string/jumbo v23, "pref_camera_effect_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 717
    .local v10, "isEffect":Z
    const-string/jumbo v22, "pref_camera_id_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v22

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 718
    .local v6, "isCameraIDPreference":Z
    :goto_1
    aget-object v22, p3, v3

    const-string/jumbo v23, "pref_camera_scenemode_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 719
    .local v14, "isScene":Z
    aget-object v22, p3, v3

    const-string/jumbo v23, "pref_camera_flashmode_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 720
    .local v11, "isFlashMode":Z
    aget-object v22, p3, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v22

    if-nez v22, :cond_2

    const/4 v12, 0x1

    .line 721
    .local v12, "isKeynull":Z
    :goto_2
    aget-object v22, p3, v3

    const-string v23, "camera_setting_storage_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 722
    .local v15, "isStorage":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraConfig()Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/CameraConfig;->isDoubleStorageSupported()Z

    move-result v16

    .line 724
    .local v16, "isSupportDoubleStorage":Z
    if-eqz v6, :cond_3

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    .line 725
    .local v8, "isCameraID_isScnen":Z
    :goto_3
    if-eqz v6, :cond_4

    if-eqz v11, :cond_4

    const/4 v7, 0x1

    .line 728
    .local v7, "isCameraID_isFlashMode":Z
    :goto_4
    if-nez v5, :cond_5

    if-nez v13, :cond_5

    if-nez v10, :cond_5

    if-nez v8, :cond_5

    if-nez v7, :cond_5

    if-nez v9, :cond_5

    const/16 v18, 0x1

    .line 729
    .local v18, "judge1":Z
    :goto_5
    if-eqz v18, :cond_6

    if-eqz v12, :cond_6

    const/16 v19, 0x1

    .line 730
    .local v19, "judge2":Z
    :goto_6
    if-eqz v15, :cond_7

    if-nez v16, :cond_7

    const/16 v21, 0x1

    .line 732
    .local v21, "storageJudge":Z
    :goto_7
    if-nez v19, :cond_0

    if-eqz v21, :cond_8

    .line 733
    :cond_0
    const-string v22, "continue"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, p3, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "           \u8fd4\u56de\u4e86"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 717
    .end local v6    # "isCameraIDPreference":Z
    .end local v7    # "isCameraID_isFlashMode":Z
    .end local v8    # "isCameraID_isScnen":Z
    .end local v11    # "isFlashMode":Z
    .end local v12    # "isKeynull":Z
    .end local v14    # "isScene":Z
    .end local v15    # "isStorage":Z
    .end local v16    # "isSupportDoubleStorage":Z
    .end local v18    # "judge1":Z
    .end local v19    # "judge2":Z
    .end local v21    # "storageJudge":Z
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 720
    .restart local v6    # "isCameraIDPreference":Z
    .restart local v11    # "isFlashMode":Z
    .restart local v14    # "isScene":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 724
    .restart local v12    # "isKeynull":Z
    .restart local v15    # "isStorage":Z
    .restart local v16    # "isSupportDoubleStorage":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 725
    .restart local v8    # "isCameraID_isScnen":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 728
    .restart local v7    # "isCameraID_isFlashMode":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    .line 729
    .restart local v18    # "judge1":Z
    :cond_6
    const/16 v19, 0x0

    goto :goto_6

    .line 730
    .restart local v19    # "judge2":Z
    :cond_7
    const/16 v21, 0x0

    goto :goto_7

    .line 736
    .restart local v21    # "storageJudge":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->backFront:[I

    move-object/from16 v22, v0

    aget v23, p5, v3

    aput v23, v22, v17

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->scene:[I

    move-object/from16 v22, v0

    aget v23, p6, v3

    aput v23, v22, v17

    .line 738
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 739
    .local v20, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v22, "text"

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    aget v24, p2, v3

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const/4 v4, 0x0

    .line 741
    aget-object v22, p3, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    aget v4, p4, v3

    .line 742
    :goto_9
    const-string v22, "image"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->icons:[I

    move-object/from16 v22, v0

    aput v4, v22, v17

    .line 744
    const-string v22, "ExpandableSettingListLayout"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "initialize key = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, p3, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", j = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v22, "key"

    aget-object v23, p3, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->listItem:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 741
    :cond_9
    aget-object v22, p3, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v4

    goto :goto_9

    .line 750
    .end local v5    # "isAbout":Z
    .end local v6    # "isCameraIDPreference":Z
    .end local v7    # "isCameraID_isFlashMode":Z
    .end local v8    # "isCameraID_isScnen":Z
    .end local v9    # "isDeveloper":Z
    .end local v10    # "isEffect":Z
    .end local v11    # "isFlashMode":Z
    .end local v12    # "isKeynull":Z
    .end local v13    # "isReset":Z
    .end local v14    # "isScene":Z
    .end local v15    # "isStorage":Z
    .end local v16    # "isSupportDoubleStorage":Z
    .end local v18    # "judge1":Z
    .end local v19    # "judge2":Z
    .end local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "storageJudge":Z
    :cond_a
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 8
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 381
    const-string/jumbo v3, "onChildClick 0000000000000000000000000000000000"

    invoke-static {v7, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraState()I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v6

    .line 383
    :cond_1
    const-string/jumbo v3, "onChildClick 1111111111111111111111111111111111"

    invoke-static {v7, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "key"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->getPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    move-result-object v2

    .line 388
    .local v2, "mCameraSettingIconListPreference":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    const-string/jumbo v3, "onChildClick()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onChildClick   groupPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "childPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getCameraState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  key  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz v2, :cond_0

    .line 395
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_hdr_key"

    const-string/jumbo v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 396
    .local v0, "isHDR":Z
    if-eqz v0, :cond_2

    const-string v3, "camera_setting_picture_size_key"

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne p4, v3, :cond_2

    .line 397
    const-string v3, "isHDR__"

    invoke-static {v7, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_2
    const-string v3, "camera_setting_location_key"

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p4, :cond_4

    .line 402
    const-string v3, "lxy"

    const-string/jumbo v4, "open gps now !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isGpsOpened()Z

    move-result v3

    if-nez v3, :cond_4

    .line 405
    const-string v3, "lxy"

    const-string/jumbo v4, "the GPS has not been opened !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_3

    .line 407
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f014d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mToast:Landroid/widget/Toast;

    .line 409
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 420
    :cond_4
    const-string v3, "camera_setting_takepicture_type_key"

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 421
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->shwoTipsAfterSettingUiRemove(I)V

    .line 426
    :cond_5
    const-string v3, "camera_setting_picture_size_key"

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 427
    if-eqz p4, :cond_6

    if-ne p4, v7, :cond_7

    .line 429
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v4, "camera_setting_square_pic_key"

    const-string/jumbo v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v2, p4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValueIndex(I)V

    .line 446
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->applyPreferencesToParameters()V

    .line 448
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->notifyDataSetChanged()V

    .line 449
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 452
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mInvalidateHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 434
    :cond_7
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v4, "camera_setting_square_pic_key"

    const-string/jumbo v5, "on"

    invoke-interface {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 437
    :cond_8
    invoke-virtual {v2, p4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValueIndex(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 269
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_0
    :pswitch_0
    return-void

    .line 271
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->onPictureSettingGroupClicked()V

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->onVideoSettingGroupClicked()V

    goto :goto_0

    .line 277
    :pswitch_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->onOtherSettingGroupClicked()V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x7f100216
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->onFinishInflate()V

    .line 126
    const v0, 0x7f100215

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuLayout:Landroid/widget/RelativeLayout;

    .line 127
    const v0, 0x7f100216

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCommonLayout:Landroid/widget/RelativeLayout;

    .line 128
    const v0, 0x7f100218

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mExtendLayout:Landroid/widget/RelativeLayout;

    .line 129
    const v0, 0x7f10021a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mOtherLayout:Landroid/widget/RelativeLayout;

    .line 130
    const v0, 0x7f10021d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    .line 131
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, -0x3d380000    # -100.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 596
    const-string/jumbo v2, "scroll"

    const-string v3, " onFling  \u624b\u52bf\u5411\u4e0a\u6ed1\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iput v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    .line 598
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->changeItem(I)V

    .line 616
    :goto_0
    return v0

    .line 600
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 601
    const-string/jumbo v2, "scroll"

    const-string v3, " onFling  \u624b\u52bf\u5411\u4e0b\u6ed1\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v2, 0x2

    iput v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    .line 603
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->changeItem(I)V

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 606
    const-string/jumbo v2, "scroll"

    const-string v3, " onFling  \u624b\u52bf\u5411\u5de6\u6ed1\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v2, 0x3

    iput v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    .line 608
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->changeItem(I)V

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 611
    const-string/jumbo v2, "scroll"

    const-string v3, " onFling  \u624b\u52bf\u5411\u53f3\u6ed1\u52a8"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v2, 0x4

    iput v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mGesture:I

    .line 613
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->changeItem(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 616
    goto :goto_0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v2, 0x1

    .line 490
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;

    check-cast v1, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;

    iget-object v1, v1, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f05f6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->hideUISetting()Z

    .line 493
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onCameraSettingEffectClicked()V

    move v1, v2

    .line 509
    :goto_0
    return v1

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f05fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onRestCameraPreferenceClicked()V

    move v1, v2

    .line 497
    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f05fc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->hideUISetting()Z

    .line 500
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onCameraAboutClicked()V

    move v1, v2

    .line 501
    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f00e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->hideUISetting()Z

    .line 504
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onDeveloperPreferenceClicked()V

    move v1, v2

    .line 505
    goto :goto_0

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->notifyDataSetChanged()V

    .line 509
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 531
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 516
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->getGroupCount()I

    move-result v1

    .line 518
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 519
    if-eq v0, p1, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 518
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 662
    const-string/jumbo v0, "scroll"

    const-string v1, " onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method public onOtherSettingGroupClicked()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 332
    iget v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    if-ne v2, v3, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iput v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    .line 334
    iget v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->initGroupdata(I)V

    .line 336
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->icons:[I

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->backFront:[I

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->scene:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->init([I[I[I)V

    .line 341
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->notifyDataSetChanged()V

    .line 342
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->getGroupCount()I

    move-result v1

    .line 343
    .local v1, "len":I
    iput v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCount:I

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 345
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mClickedListener:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mClickedListener:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;->onOtherSettingGroupClicked()V

    goto :goto_0
.end method

.method public onPictureSettingGroupClicked()V
    .locals 6

    .prologue
    .line 283
    iget v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    if-nez v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    .line 285
    iget v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->initGroupdata(I)V

    .line 287
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->icons:[I

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->backFront:[I

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->scene:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->init([I[I[I)V

    .line 291
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->notifyDataSetChanged()V

    .line 292
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->getGroupCount()I

    move-result v1

    .line 293
    .local v1, "len":I
    iput v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCount:I

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 295
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mClickedListener:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mClickedListener:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;->onPictureSettingGroupClicked()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 552
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    if-lez p4, :cond_0

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->isLastRow:Z

    .line 557
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 572
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 688
    const-string/jumbo v0, "scroll"

    const-string v1, " onShowPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 694
    const-string/jumbo v0, "scroll"

    const-string v1, " onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoSettingGroupClicked()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 305
    iget v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    if-ne v2, v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iput v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    .line 307
    iget v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->currentPosition:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->initGroupdata(I)V

    .line 309
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->icons:[I

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->backFront:[I

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->scene:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->init([I[I[I)V

    .line 313
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->notifyDataSetChanged()V

    .line 314
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->getGroupCount()I

    move-result v1

    .line 316
    .local v1, "len":I
    iput v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCount:I

    .line 318
    const-string v2, "ExpandableSettingListLayoutitemSize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 321
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mClickedListener:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mClickedListener:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;->onVideoSettingGroupClicked()V

    goto :goto_0
.end method

.method public setOnVideoSettingGroupClickedListener(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;)V
    .locals 0
    .param p1, "mClickedListener"    # Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mClickedListener:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;

    .line 364
    return-void
.end method

.method public setTextColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCommonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mExtendLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mOtherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCommonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mExtendLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mOtherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mCommonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mExtendLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mOtherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .param p1, "mAnimationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mMenuFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->clearAnimation()V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mListFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->mListFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 212
    return-void
.end method
