.class public Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/GalleryContext;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;,
        Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;,
        Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;,
        Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;
    }
.end annotation


# static fields
.field public static final ADAPTER_COLUMN_ICON:Ljava/lang/String; = "icon"

.field public static final ADAPTER_COLUMN_LABEL:Ljava/lang/String; = "label"

.field private static final FIRST_SHOW_ALBUM_TITLE_SPEC:Ljava/lang/String; = "first_show_album_title_spec"

.field private static final FIRST_SHOW_FILTER_TITLE_SPEC:Ljava/lang/String; = "first_show_filter_title_spec"

.field private static final FIRST_SHOW_FILTER_TITLE_TIPS:Ljava/lang/String; = "first_show_filter_title_tips"

.field private static final OPEN_TIME_TAG_LIST:Z = false

.field private static final PERSONCENTER_DRAFT_DISPLAY_MAX_COUNT:I = 0x63

.field public static final REQUEST_CODE_ALBUMSET_SET_NAME:I = 0x1e07a

.field public static final REQUEST_CODE_ALBUM_SET_NAME:I = 0x1e079

.field public static final REQUEST_CODE_FACE_SELECTOR:I = 0x1e07b

.field public static final REQUEST_CODE_PICK_CONTACT:I = 0x1e07c

.field private static final TAB_INDEX_ALBUM:I = 0x0

.field private static final TAB_INDEX_FOLDER:I = 0x1

.field private static final TAB_INDEX_WALL:I = 0x3

.field private static final TAB_INDEX_WEIBO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AbstractGalleryActivity"

.field protected static final VIEW_TAB_INVALIDATE:I = -0x1

.field public static mCameraParent:Landroid/widget/RelativeLayout; = null

.field private static final mShowWeibo:Z = true


# instance fields
.field private final CLOUD_GET_STORAGE_INFO:I

.field private final CLOUD_STORAGE_INFO_SURPLUS:Ljava/lang/String;

.field private final CLOUD_STORAGE_INFO_TOTAL:Ljava/lang/String;

.field private final CLOUD_STORAGE_INFO_USED:Ljava/lang/String;

.field private final HIDE_DATE_MARK:I

.field private OnPersonCenterClicked:Landroid/view/View$OnClickListener;

.field private OnPersonCenterCloudChecked:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

.field private OnPersonCenterMatchWithClicked:Landroid/view/View$OnClickListener;

.field private lastCallLogMaxID:I

.field private listItem:Ljava/util/ArrayList;
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

.field private lvDate:Landroid/widget/ListView;

.field private mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field private mAboutManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;

.field private mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

.field private mActionBarDelete:Landroid/widget/ImageView;

.field private mActionBarFinish:Landroid/widget/ImageView;

.field private mActionBarMore:Landroid/widget/ImageView;

.field private mActionBarRL:Landroid/widget/RelativeLayout;

.field private mActionBarSelectRL:Landroid/widget/RelativeLayout;

.field private mActionBarSelectTv:Landroid/widget/TextView;

.field private mActionBarShare:Landroid/widget/RelativeLayout;

.field public mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAlbumSpecView:Landroid/widget/LinearLayout;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAllMenuGroup:Landroid/widget/RelativeLayout;

.field private mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBackOnClickListener:Landroid/view/View$OnClickListener;

.field private mBatchService:Lcom/lenovo/scg/gallery3d/app/BatchService;

.field private mBatchServiceConnection:Landroid/content/ServiceConnection;

.field private mBatchServiceIsBound:Z

.field private mBottomInAnimation:Landroid/view/animation/Animation;

.field private mBottomOutAnimation:Landroid/view/animation/Animation;

.field private mCLoudHandler:Landroid/os/Handler;

.field private mDataListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;

.field private mDateMark:Landroid/widget/TextView;

.field private mDisableToggleStatusBar:Z

.field private mDlgLoading:Landroid/app/ProgressDialog;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mExitCnt:I

.field private mFolderFilterCancel:Landroid/widget/ImageView;

.field private mFolderFilterConfirm:Landroid/widget/ImageView;

.field private mFolderFilterRl:Landroid/widget/RelativeLayout;

.field private mFolderFilterSpecView:Landroid/widget/RelativeLayout;

.field private mFolderFilterTipsRl:Landroid/widget/RelativeLayout;

.field public mFolderFilterViewFromMain:Z

.field public mFolderFilterViewFromSetting:Z

.field private mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

.field private mGalleryPageContainer:Landroid/widget/LinearLayout;

.field private mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mIsBGDataEnable:Z

.field private mIsCameraStarted:Z

.field private mIsPaused:Z

.field private mLeftPanelHandler:Landroid/os/Handler;

.field protected mLeftPanelLayout:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

.field private mListView:Landroid/widget/ListView;

.field private mLocalTimeTagListView:Landroid/widget/LinearLayout;

.field private mLockClick:Z

.field protected mLogoutBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMainPageCover:Landroid/view/View;

.field private mMemMonitorService:Lcom/lenovo/scg/monitor/MonitorService;

.field private mMemmServiceConnection:Landroid/content/ServiceConnection;

.field private mMenuGroupCur:Landroid/widget/RelativeLayout;

.field private mMidFolderSettingLL:Landroid/widget/LinearLayout;

.field private mMoreAdapter:Landroid/widget/SimpleAdapter;

.field private mMoreMenuItems:Ljava/util/ArrayList;
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

.field private mMountFilter:Landroid/content/IntentFilter;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field protected mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

.field private mPhotoFileName:Ljava/lang/String;

.field private mPlayPanorama:Landroid/widget/ImageView;

.field private mPsCenterCloudAuto:Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;

.field private mPsCenterCloudBoth:Landroid/widget/CheckBox;

.field private mPsCenterCloudCompression:Landroid/widget/CheckBox;

.field private mPsCenterCloudWifi:Landroid/widget/CheckBox;

.field protected mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

.field protected mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

.field private mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

.field private mRestartHandler:Landroid/os/Handler;

.field private mRightMenuButton:Landroid/widget/ImageButton;

.field private mRunnableExit:Ljava/lang/Runnable;

.field private mSelectAdapter:Landroid/widget/SimpleAdapter;

.field private mSelectMenuItems:Ljava/util/ArrayList;
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

.field private mSelectedAction:Ljava/lang/String;

.field private mSelectedMimeType:Ljava/lang/String;

.field protected mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

.field private mShareAdapter:Landroid/widget/SimpleAdapter;

.field private mShareMMSLL:Landroid/widget/LinearLayout;

.field private mShareMenuItems:Ljava/util/ArrayList;
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

.field private mSharePopWindow:Landroid/widget/PopupWindow;

.field private mShareToCancel:Landroid/widget/LinearLayout;

.field private mShareToFriendCircleLL:Landroid/widget/LinearLayout;

.field private mShareToMoreLL:Landroid/widget/LinearLayout;

.field private mShareToQQSpace:Landroid/widget/LinearLayout;

.field private mShareToQieziLL:Landroid/widget/RelativeLayout;

.field private mShareToWeiBoLL:Landroid/widget/LinearLayout;

.field private mShareToWeiXinLL:Landroid/widget/LinearLayout;

.field private mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

.field protected mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

.field protected mStartByThirdApp:Z

.field private mStartPLFirst:Z

.field private mStateManager:Lcom/lenovo/scg/gallery3d/app/StateManager;

.field private mTabCur:I

.field private mTimerForHideFolderFilterTips:Ljava/util/Timer;

.field private mTopInAnimation:Landroid/view/animation/Animation;

.field private mTopOutAnimation:Landroid/view/animation/Animation;

.field private mTransitionStore:Lcom/lenovo/scg/gallery3d/app/TransitionStore;

.field private mTvFolder:Landroid/widget/TextView;

.field private mTvLocal:Landroid/widget/TextView;

.field private mTvWeibo:Landroid/widget/TextView;

.field private mVgFaceExclude:Landroid/view/ViewGroup;

.field private mVgFolder:Landroid/view/ViewGroup;

.field private mVgGallery:Landroid/view/ViewGroup;

.field private mVgLocal:Landroid/view/ViewGroup;

.field private mVgWeibo:Landroid/view/ViewGroup;

.field private final mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

.field private mViewGroupBottomMenu:Landroid/view/ViewGroup;

.field private mViewGroupFaceSelector:Landroid/view/ViewGroup;

.field private mViewGroupGallery:Landroid/view/ViewGroup;

.field private mViewGroupTopTab:Landroid/view/ViewGroup;

.field private mViewPersonCenter:Landroid/widget/LinearLayout;

.field private mViewTab:I

.field private mWbGroupStateChangeListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

.field protected mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

.field private mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

.field protected mWeiboReceiver:Landroid/content/BroadcastReceiver;

.field private menuItemOnClickListener:Landroid/view/View$OnClickListener;

.field private menuWindow:Landroid/widget/PopupWindow;

.field private nMenuOldId:I

.field private rightMenuOnClickListener:Landroid/view/View$OnClickListener;

.field private saveUserInfo:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;

.field private service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;

.field private updateUserInfo:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCameraParent:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 190
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    .line 197
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 199
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAllMenuGroup:Landroid/widget/RelativeLayout;

    .line 202
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->lvDate:Landroid/widget/ListView;

    .line 204
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->listItem:Ljava/util/ArrayList;

    .line 206
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    .line 218
    iput v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 227
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    .line 230
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    .line 232
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    .line 235
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudAuto:Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;

    .line 237
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudWifi:Landroid/widget/CheckBox;

    .line 239
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudBoth:Landroid/widget/CheckBox;

    .line 241
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudCompression:Landroid/widget/CheckBox;

    .line 245
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mInAnimation:Landroid/view/animation/Animation;

    .line 247
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mOutAnimation:Landroid/view/animation/Animation;

    .line 249
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    .line 251
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopInAnimation:Landroid/view/animation/Animation;

    .line 253
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopOutAnimation:Landroid/view/animation/Animation;

    .line 255
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomInAnimation:Landroid/view/animation/Animation;

    .line 257
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomOutAnimation:Landroid/view/animation/Animation;

    .line 259
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    .line 261
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    .line 263
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupFaceSelector:Landroid/view/ViewGroup;

    .line 265
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgLocal:Landroid/view/ViewGroup;

    .line 268
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFolder:Landroid/view/ViewGroup;

    .line 271
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    .line 273
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgGallery:Landroid/view/ViewGroup;

    .line 275
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFaceExclude:Landroid/view/ViewGroup;

    .line 278
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    .line 283
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPlayPanorama:Landroid/widget/ImageView;

    .line 285
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDateMark:Landroid/widget/TextView;

    .line 290
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    .line 292
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterRl:Landroid/widget/RelativeLayout;

    .line 294
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterConfirm:Landroid/widget/ImageView;

    .line 296
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterCancel:Landroid/widget/ImageView;

    .line 298
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    .line 300
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromSetting:Z

    .line 302
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromMain:Z

    .line 304
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterTipsRl:Landroid/widget/RelativeLayout;

    .line 322
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTimerForHideFolderFilterTips:Ljava/util/Timer;

    .line 340
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvLocal:Landroid/widget/TextView;

    .line 342
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvWeibo:Landroid/widget/TextView;

    .line 346
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvFolder:Landroid/widget/TextView;

    .line 352
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewTab:I

    .line 354
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->nMenuOldId:I

    .line 356
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsCameraStarted:Z

    .line 359
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsPaused:Z

    .line 369
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDlgLoading:Landroid/app/ProgressDialog;

    .line 394
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 398
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/UserInfoServiceImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/UserInfoServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;

    .line 408
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 415
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLockClick:Z

    .line 475
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 483
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    .line 485
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboReceiver:Landroid/content/BroadcastReceiver;

    .line 1068
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;

    .line 1078
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mStartPLFirst:Z

    .line 1919
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$11;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudChecked:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1963
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    .line 2039
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;

    .line 2041
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2043
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 2099
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterMatchWithClicked:Landroid/view/View$OnClickListener;

    .line 2147
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterClicked:Landroid/view/View$OnClickListener;

    .line 2257
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWbGroupStateChangeListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    .line 2300
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->rightMenuOnClickListener:Landroid/view/View$OnClickListener;

    .line 2346
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$18;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$18;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuItemOnClickListener:Landroid/view/View$OnClickListener;

    .line 2928
    const v0, 0x9111

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->CLOUD_GET_STORAGE_INFO:I

    .line 2930
    const-string v0, "Cloud storage total size"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->CLOUD_STORAGE_INFO_TOTAL:Ljava/lang/String;

    .line 2932
    const-string v0, "Cloud storage used size"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->CLOUD_STORAGE_INFO_USED:Ljava/lang/String;

    .line 2934
    const-string v0, "Cloud storage surplus size"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->CLOUD_STORAGE_INFO_SURPLUS:Ljava/lang/String;

    .line 2937
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$20;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCLoudHandler:Landroid/os/Handler;

    .line 3765
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$26;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$26;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRestartHandler:Landroid/os/Handler;

    .line 3782
    iput v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mExitCnt:I

    .line 3784
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$27;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$27;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRunnableExit:Ljava/lang/Runnable;

    .line 4064
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$29;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$29;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLogoutBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4115
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    .line 4117
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$30;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$30;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchServiceConnection:Landroid/content/ServiceConnection;

    .line 4131
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$31;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$31;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMemmServiceConnection:Landroid/content/ServiceConnection;

    .line 4213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreMenuItems:Ljava/util/ArrayList;

    .line 4217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectMenuItems:Ljava/util/ArrayList;

    .line 4221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMenuItems:Ljava/util/ArrayList;

    .line 4539
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$37;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$37;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 4639
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$38;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$38;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 4652
    const/16 v0, 0x100

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->HIDE_DATE_MARK:I

    .line 4654
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 4656
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$39;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$39;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mHandler:Landroid/os/Handler;

    .line 4709
    const v0, 0x7fffffff

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->lastCallLogMaxID:I

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterTipsRl:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideFolderFilterSpecView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWbGroupStateChangeListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCLoudHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLockClick:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mExitCnt:I

    return p1
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideAlbumSpecView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->rightMenuOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/BatchService;)Lcom/lenovo/scg/gallery3d/app/BatchService;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/app/BatchService;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchService:Lcom/lenovo/scg/gallery3d/app/BatchService;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/monitor/MonitorService;)Lcom/lenovo/scg/monitor/MonitorService;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMemMonitorService:Lcom/lenovo/scg/monitor/MonitorService;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarShare:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showCloudPanel()V

    return-void
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarSelectRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectedAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectedMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDateMark:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->resetCloudSetting()V

    return-void
.end method

.method static synthetic access$4000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->cloudLogin()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->enablePscenterWidget(I)V

    return-void
.end method

.method private addLocalTimeListView()V
    .locals 11

    .prologue
    const/4 v9, -0x1

    .line 1447
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLocalTimeTagListView:Landroid/widget/LinearLayout;

    if-nez v8, :cond_2

    .line 1449
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v8

    instance-of v8, v8, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    if-eqz v8, :cond_1

    .line 1451
    const v8, 0x7f100643

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1453
    .local v3, "main_layout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1455
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1456
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0400f4

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLocalTimeTagListView:Landroid/widget/LinearLayout;

    .line 1457
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLocalTimeTagListView:Landroid/widget/LinearLayout;

    const v9, 0x7f10063a

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 1459
    .local v5, "timeList":Landroid/widget/ListView;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLocalTimeTagListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    new-instance v8, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$6;

    invoke-direct {v8, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1476
    new-instance v6, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumAdapter;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumAdapter;-><init>(Landroid/content/Context;)V

    .line 1477
    .local v6, "timeListAdapter":Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumAdapter;
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1479
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->getTimeInfoList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1480
    .local v7, "timeNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;

    .line 1481
    .local v4, "name":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;
    const-string v8, "AbstractGalleryActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1484
    .end local v4    # "name":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;
    :cond_0
    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 1485
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumAdapter;->notifyDataSetChanged()V

    .line 1491
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "main_layout":Landroid/widget/FrameLayout;
    .end local v5    # "timeList":Landroid/widget/ListView;
    .end local v6    # "timeListAdapter":Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumAdapter;
    .end local v7    # "timeNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;>;"
    :cond_1
    :goto_1
    return-void

    .line 1489
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->removeLocalTimeTagListView()V

    goto :goto_1
.end method

.method private addWeiboList()V
    .locals 3

    .prologue
    .line 4047
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-nez v1, :cond_0

    .line 4048
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .line 4051
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v1, :cond_1

    .line 4052
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100646

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4053
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->initWeibo(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 4055
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 4059
    :cond_2
    return-void
.end method

.method private addWeiboLoginView()V
    .locals 3

    .prologue
    .line 3993
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    if-nez v1, :cond_0

    .line 3994
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100646

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3995
    .local v0, "vg":Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .line 3996
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->setLoginListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;)V

    .line 4032
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->setWeiboList(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    .line 4033
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->startAnimation(Z)V

    .line 4037
    .end local v0    # "vg":Landroid/widget/RelativeLayout;
    :goto_0
    return-void

    .line 4035
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->show()V

    goto :goto_0
.end method

.method private canSendMessage()Z
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method private cloudLogin()V
    .locals 2

    .prologue
    .line 1873
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;-><init>(Landroid/app/Activity;)V

    .line 1874
    .local v0, "lcpaccount":Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->checkLoginAndAuthThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 1893
    return-void
.end method

.method private doBindBatchService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4145
    const-string v0, "BINDSERVICE"

    const-string v1, "doBindBatchService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/app/BatchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4149
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isSupportMonitorWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4151
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/monitor/MonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMemmServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4158
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    .line 4159
    return-void

    .line 4152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doCropPhoto(Landroid/net/Uri;)V
    .locals 7
    .param p1, "filepath"    # Landroid/net/Uri;

    .prologue
    .line 3565
    :try_start_0
    const-string/jumbo v2, "weibo_header_background.jpg"

    .line 3566
    .local v2, "fileName":Ljava/lang/String;
    const-string v4, "AbstractGalleryActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPhotoFileName:Ljava/lang/String;

    .line 3568
    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3569
    .local v0, "croppedPath":Ljava/lang/String;
    const-string v4, "AbstractGalleryActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "croppedPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getCropImageIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 3572
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3576
    .end local v0    # "croppedPath":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3573
    :catch_0
    move-exception v1

    .line 3574
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AbstractGalleryActivity"

    const-string v5, "Cannot crop image"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doUnbindBatchService()V
    .locals 2

    .prologue
    .line 4162
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    if-eqz v0, :cond_1

    .line 4163
    const-string v0, "BINDSERVICE"

    const-string v1, "doUnBindBatchService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4168
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isSupportMonitorWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4170
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMemmServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4177
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    .line 4179
    :cond_1
    return-void

    .line 4171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private enablePscenterWidget(I)V
    .locals 8
    .param p1, "widgetId"    # I

    .prologue
    const v7, 0x7f1007c6

    const v6, 0x7f1007c5

    const v5, 0x7f1007c4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2223
    const-string v0, "AbstractGalleryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePscenterWidget, widgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2225
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 2226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 2227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 2244
    :goto_0
    return-void

    .line 2229
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2231
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 2235
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 2239
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 2229
    nop

    :pswitch_data_0
    .packed-switch 0x7f1007c4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCropImageIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "inputPhotoPath"    # Landroid/net/Uri;
    .param p2, "croppedPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 3583
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 3586
    .local v0, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lenovo.intent.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3588
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3591
    invoke-static {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->addGalleryIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 3592
    return-object v1
.end method

.method private getDraftCount()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2970
    const/4 v6, 0x0

    .line 2972
    .local v6, "count":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2973
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2974
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2975
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2977
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2979
    :cond_1
    return v6
.end method

.method public static getLsfStartTime(Landroid/content/Context;)J
    .locals 6
    .param p0, "ct"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 4746
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lsf_scg_start_time"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 4747
    .local v0, "startTime":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 4748
    const/16 v2, 0x3c

    invoke-static {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setLsfStartTime(Landroid/content/Context;I)V

    .line 4750
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lsf_scg_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private getStatusBarHeight()I
    .locals 5

    .prologue
    .line 4515
    const/4 v1, 0x0

    .line 4517
    .local v1, "statusH":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4518
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4520
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 4522
    if-gez v1, :cond_0

    .line 4523
    const/4 v1, 0x0

    .line 4526
    :cond_0
    const-string v2, "AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "statusH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    return v1
.end method

.method private hideAlbumSpecView()Z
    .locals 2

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlbumSpecView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlbumSpecView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlbumSpecView:Landroid/widget/LinearLayout;

    .line 1588
    const/4 v0, 0x1

    .line 1590
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideFolderFilterSpecView()Z
    .locals 2

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    .line 1558
    const/4 v0, 0x1

    .line 1560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideWeiboLoginLayout()V
    .locals 1

    .prologue
    .line 4040
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    if-eqz v0, :cond_0

    .line 4041
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->hide()V

    .line 4043
    :cond_0
    return-void
.end method

.method private initAbout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2046
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->edit()Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->channel(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    const-string v1, "light"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->theme(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->showCheckUpdate(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->showFeedback(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    const v1, 0x7f020601

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->updateNotificationSmallIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateByTime(J)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateOnAboutActivityCreate(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateOnWiFiConnected(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateOnlyWiFi(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    const-string v1, "com.lenovo.scg"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->secondCheckUpdateApp(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 2057
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->commit()V

    .line 2059
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f07fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->QQGroup(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0802

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->website(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->commit()V

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2066
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;

    .line 2067
    return-void
.end method

.method private initActionBar(Landroid/widget/RelativeLayout;)V
    .locals 24
    .param p1, "parentView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 4319
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    .line 4321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 4511
    :goto_0
    return-void

    .line 4324
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    const v3, 0x7f100097

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarFinish:Landroid/widget/ImageView;

    .line 4325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    const v3, 0x7f100099

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarSelectTv:Landroid/widget/TextView;

    .line 4327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    .line 4329
    .local v17, "scaleVal":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 4330
    .local v21, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarSelectTv:Landroid/widget/TextView;

    move/from16 v0, v21

    int-to-float v3, v0

    div-float v3, v3, v17

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4333
    .end local v17    # "scaleVal":F
    .end local v21    # "size":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    const v3, 0x7f100098

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarSelectRL:Landroid/widget/RelativeLayout;

    .line 4334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    const v3, 0x7f10009a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarShare:Landroid/widget/RelativeLayout;

    .line 4335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    const v3, 0x7f10009b

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarDelete:Landroid/widget/ImageView;

    .line 4336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    const v3, 0x7f10009c

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarMore:Landroid/widget/ImageView;

    .line 4338
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 4339
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 4340
    .local v14, "layout":Landroid/view/View;
    const v2, 0x7f100082

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mListView:Landroid/widget/ListView;

    .line 4342
    new-instance v2, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreMenuItems:Ljava/util/ArrayList;

    const v5, 0x7f04000d

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "icon"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "label"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreAdapter:Landroid/widget/SimpleAdapter;

    .line 4344
    new-instance v2, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectMenuItems:Ljava/util/ArrayList;

    const v5, 0x7f04000d

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "icon"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "label"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectAdapter:Landroid/widget/SimpleAdapter;

    .line 4347
    new-instance v2, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMenuItems:Ljava/util/ArrayList;

    const v5, 0x7f04000e

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "icon"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "label"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_2

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareAdapter:Landroid/widget/SimpleAdapter;

    .line 4350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreAdapter:Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v2, v3}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 4351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectAdapter:Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v2, v3}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 4352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareAdapter:Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v2, v3}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 4354
    new-instance v2, Landroid/widget/PopupWindow;

    const/16 v3, 0x9b

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    const/16 v4, 0x1f4

    invoke-direct {v2, v14, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;

    .line 4359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4363
    const v2, 0x7f040011

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 4364
    .local v19, "shareLayout":Landroid/view/View;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4365
    .local v9, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4366
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 4367
    .local v18, "screenWidth":I
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;

    .line 4368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$32;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$32;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 4377
    const v2, 0x7f100083

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 4378
    .local v20, "sharePopupViewLL":Landroid/widget/LinearLayout;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 4379
    const v2, 0x7f100084

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToQieziLL:Landroid/widget/RelativeLayout;

    .line 4380
    const v2, 0x7f10008f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMMSLL:Landroid/widget/LinearLayout;

    .line 4381
    const v2, 0x7f100089

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiXinLL:Landroid/widget/LinearLayout;

    .line 4382
    const v2, 0x7f10008d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    .line 4383
    const v2, 0x7f10008b

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    .line 4384
    const v2, 0x7f100091

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToQQSpace:Landroid/widget/LinearLayout;

    .line 4385
    const v2, 0x7f100093

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToMoreLL:Landroid/widget/LinearLayout;

    .line 4386
    const v2, 0x7f100095

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToCancel:Landroid/widget/LinearLayout;

    .line 4387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToCancel:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$33;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v13

    .line 4396
    .local v13, "isChinese":Z
    if-nez v13, :cond_2

    .line 4397
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 4398
    .restart local v21    # "size":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4400
    .local v8, "density":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMMSLL:Landroid/widget/LinearLayout;

    const v3, 0x7f100090

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 4401
    .local v15, "mmsTv":Landroid/widget/TextView;
    move/from16 v0, v21

    int-to-float v2, v0

    div-float/2addr v2, v8

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiXinLL:Landroid/widget/LinearLayout;

    const v3, 0x7f10008a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 4404
    .local v23, "weixinTv":Landroid/widget/TextView;
    move/from16 v0, v21

    int-to-float v2, v0

    div-float/2addr v2, v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    const v3, 0x7f10008e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 4407
    .local v22, "weiboTv":Landroid/widget/TextView;
    move/from16 v0, v21

    int-to-float v2, v0

    div-float/2addr v2, v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    const v3, 0x7f10008c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 4410
    .local v11, "friendcircleTv":Landroid/widget/TextView;
    move/from16 v0, v21

    int-to-float v2, v0

    div-float/2addr v2, v8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToMoreLL:Landroid/widget/LinearLayout;

    const v3, 0x7f100094

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 4416
    .local v16, "moreTv":Landroid/widget/TextView;
    move/from16 v0, v21

    int-to-float v2, v0

    div-float/2addr v2, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4420
    .end local v8    # "density":F
    .end local v11    # "friendcircleTv":Landroid/widget/TextView;
    .end local v15    # "mmsTv":Landroid/widget/TextView;
    .end local v16    # "moreTv":Landroid/widget/TextView;
    .end local v21    # "size":I
    .end local v22    # "weiboTv":Landroid/widget/TextView;
    .end local v23    # "weixinTv":Landroid/widget/TextView;
    :cond_2
    const/16 v10, 0x9

    .line 4421
    .local v10, "edgeSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarMore:Landroid/widget/ImageView;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarFinish:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarSelectRL:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarShare:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4342
    nop

    :array_0
    .array-data 4
        0x7f100080
        0x7f100081
    .end array-data

    .line 4344
    :array_1
    .array-data 4
        0x7f100080
        0x7f100081
    .end array-data

    .line 4347
    :array_2
    .array-data 4
        0x7f100080
        0x7f100081
    .end array-data
.end method

.method private initLeftCloudPanel()V
    .locals 13

    .prologue
    const v12, 0x7f100717

    const v11, 0x7f100714

    const v10, 0x7f100713

    const v9, 0x7f100711

    const v8, 0x7f10070f

    .line 917
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    .line 918
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-nez v6, :cond_0

    .line 919
    new-instance v6, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 921
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->setLocalPageNotAlphaChange()V

    .line 922
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    const v7, 0x7f040115

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->setLeftBehindContentView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    .line 923
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v7, 0x7f100701

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    .line 924
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v7, 0x7f100702

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    .line 927
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100715

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 928
    .local v5, "llUnlogin":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0207ac

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 929
    .local v3, "bmpUnlogin":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 930
    .local v1, "bkgUnlogin":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100703

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 933
    .local v4, "llLogin":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02079d

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 934
    .local v2, "bmpLogin":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 935
    .local v0, "bkgLogin":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 938
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100719

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10071b

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10071c

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 944
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100719

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 945
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10071a

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 946
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10071b

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 947
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10071c

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 949
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10070b

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudAuto:Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;

    .line 950
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10070c

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudWifi:Landroid/widget/CheckBox;

    .line 951
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10070d

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudBoth:Landroid/widget/CheckBox;

    .line 952
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10070e

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudCompression:Landroid/widget/CheckBox;

    .line 954
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100704

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 955
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100706

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 956
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100707

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 957
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100708

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 958
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100709

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 959
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f10070a

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 960
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudWifi:Landroid/widget/CheckBox;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 961
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudBoth:Landroid/widget/CheckBox;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 962
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudCompression:Landroid/widget/CheckBox;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 963
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 964
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 965
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f100712

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 966
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 967
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 971
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudAuto:Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudChecked:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 972
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudWifi:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudChecked:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 973
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudBoth:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudChecked:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 974
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudCompression:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudChecked:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 975
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterCloudClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->resetCloudSetting()V

    .line 986
    return-void
.end method

.method private initLeftPanel()V
    .locals 8

    .prologue
    .line 1009
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1010
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1011
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1012
    .local v3, "screenWidth":I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1014
    .local v4, "screnHeight":I
    if-ge v3, v4, :cond_1

    .line 1015
    :goto_0
    const v5, 0x7f100645

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGalleryPageContainer:Landroid/widget/LinearLayout;

    .line 1016
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-nez v5, :cond_0

    .line 1020
    new-instance v5, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 1023
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    const v6, 0x7f040114

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->setLeftBehindContentView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    .line 1026
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v6, 0x7f100701

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    .line 1027
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v6, 0x7f100702

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    .line 1029
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007c7

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007c3

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1031
    .local v2, "optionLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1032
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "optionLayout":Landroid/widget/LinearLayout;
    :cond_1
    move v3, v4

    .line 1014
    goto :goto_0

    .line 1034
    .restart local v1    # "i":I
    .restart local v2    # "optionLayout":Landroid/widget/LinearLayout;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1035
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1038
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007c4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007c5

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f1007c2

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    return-void
.end method

.method private initLeftPanelMatchWithGoldbox()V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->setLocalPageNotAlphaChange()V

    .line 996
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    const v1, 0x7f040118

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->setLeftBehindContentView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    .line 997
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v1, 0x7f10071f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterMatchWithClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v1, 0x7f100724

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterMatchWithClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 999
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v1, 0x7f100728

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterMatchWithClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v1, 0x7f10072b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterMatchWithClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    return-void
.end method

.method private initLeftWithoutNetworkMenu()V
    .locals 2

    .prologue
    .line 897
    const-string/jumbo v0, "wwf6"

    const-string v1, "initLeftWithoutNetworkMenu start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->setLocalPageNotAlphaChange()V

    .line 903
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    const v1, 0x7f040119

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->setLeftBehindContentView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    .line 904
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v1, 0x7f10072e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v1, 0x7f100730

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterMatchWithClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v1, 0x7f100732

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->OnPersonCenterMatchWithClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 909
    const-string/jumbo v0, "wwf6"

    const-string v1, "initLeftWithoutNetworkMenu end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method private initMenuItem(I)V
    .locals 12
    .param p1, "selectId"    # I

    .prologue
    const v11, 0x7f0207fb

    const v10, 0x7f0207f2

    const/16 v9, 0x8

    .line 2452
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAllMenuGroup:Landroid/widget/RelativeLayout;

    const v8, 0x7f10064a

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2454
    .local v2, "rlMenuGroup":Landroid/widget/RelativeLayout;
    const v7, 0x7f100849

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2455
    .local v1, "imgTime":Landroid/widget/ImageView;
    const v7, 0x7f10084c

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2456
    .local v0, "imgFolder":Landroid/widget/ImageView;
    const v7, 0x7f10084a

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2457
    .local v6, "textTime":Landroid/widget/TextView;
    const v7, 0x7f10084d

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2458
    .local v4, "textFolder":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0208d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 2459
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0208cf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 2461
    .local v5, "textSelectedColor":Landroid/content/res/ColorStateList;
    sparse-switch p1, :sswitch_data_0

    .line 2500
    :goto_0
    return-void

    .line 2464
    :sswitch_0
    const v7, 0x7f0207fa

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2465
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2466
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2467
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2468
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    const v8, 0x7f0207f9

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2469
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2472
    :sswitch_1
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2473
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2474
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2475
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2476
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    const v8, 0x7f0207f3

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2477
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2480
    :sswitch_2
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2481
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2482
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2483
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2484
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    const v8, 0x7f0207f6

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2485
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2489
    :sswitch_3
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2490
    const v7, 0x7f0207f1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2491
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2492
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2493
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    const v8, 0x7f0207f0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2494
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2461
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7f100848 -> :sswitch_0
        0x7f10084b -> :sswitch_3
    .end sparse-switch
.end method

.method private initRightMenu()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3224
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-nez v7, :cond_0

    .line 3225
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f100646

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3227
    :cond_0
    const/4 v6, 0x0

    .line 3229
    .local v6, "vMenu":Landroid/view/View;
    :try_start_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040166

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 3234
    :goto_0
    if-nez v6, :cond_1

    .line 3272
    .end local v6    # "vMenu":Landroid/view/View;
    :goto_1
    return-void

    .line 3230
    .restart local v6    # "vMenu":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 3231
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "inflate left_menu_group.xml error: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3232
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3268
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "vMenu":Landroid/view/View;
    :catch_1
    move-exception v1

    .line 3269
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "initMenu error: %s"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3270
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3237
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "vMenu":Landroid/view/View;
    :cond_1
    :try_start_3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3238
    .local v3, "lpMenu":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x2

    const v8, 0x7f10065a

    invoke-virtual {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3239
    const/4 v7, 0x3

    const v8, 0x7f100649

    invoke-virtual {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3240
    const/16 v7, 0xb

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3241
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3242
    move-object v0, v6

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v7, v0

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAllMenuGroup:Landroid/widget/RelativeLayout;

    .line 3245
    const v7, 0x7f10064a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 3246
    .local v5, "rlMenuGroup":Landroid/widget/RelativeLayout;
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    .line 3247
    .local v4, "nCnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 3248
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuItemOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3247
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3260
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDefaultPage()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initMenuItem(I)V

    .line 3263
    const v7, 0x7f100650

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "rlMenuGroup":Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 3266
    .restart local v5    # "rlMenuGroup":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    invoke-static {v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method private loadAvatarPhoto(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "avatar"    # Landroid/widget/ImageView;
    .param p2, "avatarUrl"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 3116
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$21;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$21;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/widget/ImageView;)V

    .line 3124
    .local v0, "avatarHnadler":Landroid/os/Handler;
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->start()V

    .line 3153
    return-void
.end method

.method private onMenuItemClicked(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 2367
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 2368
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2370
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->nMenuOldId:I

    if-ne v2, p1, :cond_1

    .line 2422
    :goto_0
    return-void

    .line 2372
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 2373
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    if-eqz v0, :cond_2

    .line 2374
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 2378
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewTab:I

    .line 2381
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    .line 2384
    packed-switch p1, :pswitch_data_0

    .line 2421
    :goto_1
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateMenuItem(I)V

    goto :goto_0

    .line 2386
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showNormal()V

    .line 2387
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2388
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-path"

    const-string v3, "/local/all"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    if-eqz v0, :cond_3

    .line 2395
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchStateNotDestory(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2397
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2403
    .end local v1    # "data":Landroid/os/Bundle;
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showNormal()V

    .line 2404
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2407
    .restart local v1    # "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-path"

    const-string v3, "/local/time"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    if-eqz v0, :cond_4

    .line 2411
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v2, v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchStateNotDestory(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2413
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2384
    nop

    :pswitch_data_0
    .packed-switch 0x7f100848
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetCloudSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1897
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->isAutoSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudAuto:Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setChecked(Z)V

    .line 1899
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudWifi:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1900
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudBoth:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1907
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->isJustWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1908
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudWifi:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1909
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudBoth:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1915
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudCompression:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->isCompression()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1916
    return-void

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudAuto:Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setChecked(Z)V

    .line 1903
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudWifi:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1904
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudBoth:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 1911
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudWifi:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1912
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterCloudBoth:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private save2FolderFilterDB()V
    .locals 26

    .prologue
    .line 1659
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1660
    .local v15, "tmpAllMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1662
    .local v16, "tmpAllPathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v13

    .line 1664
    .local v13, "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v5

    .line 1665
    .local v5, "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const-string v22, "/local/all"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v12

    .line 1666
    .local v12, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v14

    .line 1667
    .local v14, "subMediaCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v14, :cond_2

    .line 1668
    invoke-virtual {v12, v7}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v19

    .line 1669
    .local v19, "tmpMS":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v17

    .line 1670
    .local v17, "tmpBucketId":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1671
    .local v20, "tmpName":Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .line 1674
    .local v8, "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1675
    .local v18, "tmpFullPath":Ljava/lang/String;
    const-string v22, "/DCIM/Camera/continuous_"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1676
    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1677
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->deleteCCBucketIdFromDb(Ljava/lang/String;)V

    .line 1682
    :cond_0
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1679
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->saveCCBucketId2Db(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1686
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    .end local v17    # "tmpBucketId":Ljava/lang/String;
    .end local v18    # "tmpFullPath":Ljava/lang/String;
    .end local v19    # "tmpMS":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v20    # "tmpName":Ljava/lang/String;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->openDB()V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteAll()V

    .line 1690
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1691
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1692
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1693
    .local v3, "bucketId":Ljava/lang/String;
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultFilterDirectoryMap:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1694
    sget v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mSwapSDCard:I

    if-nez v22, :cond_6

    .line 1695
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1696
    .local v4, "cvs":Landroid/content/ContentValues;
    const-string v22, "_bucket_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v23, "_folder_name"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string v22, "_storge_sdcard"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->insertDb(Landroid/content/ContentValues;)V

    .line 1701
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1702
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1703
    .local v21, "tmpPath":Ljava/lang/String;
    const-string v22, "/storage/sdcard0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1704
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "/storage/sdcard0"

    const-string v24, "/storage/sdcard1"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 1708
    :cond_4
    :goto_3
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 1709
    .restart local v17    # "tmpBucketId":Ljava/lang/String;
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 1710
    .restart local v20    # "tmpName":Ljava/lang/String;
    const-string v22, "_bucket_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v22, "_folder_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v22, "_storge_sdcard"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->insertDb(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1804
    .end local v3    # "bucketId":Ljava/lang/String;
    .end local v4    # "cvs":Landroid/content/ContentValues;
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v17    # "tmpBucketId":Ljava/lang/String;
    .end local v20    # "tmpName":Ljava/lang/String;
    .end local v21    # "tmpPath":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1805
    .local v6, "e":Ljava/lang/Exception;
    const-string v22, "AbstractGalleryActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "save database error: %s"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1808
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 1809
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    .line 1810
    return-void

    .line 1705
    .restart local v3    # "bucketId":Ljava/lang/String;
    .restart local v4    # "cvs":Landroid/content/ContentValues;
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v21    # "tmpPath":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v22, "/storage/sdcard1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1706
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "/storage/sdcard1"

    const-string v24, "/storage/sdcard0"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 1714
    .end local v4    # "cvs":Landroid/content/ContentValues;
    .end local v21    # "tmpPath":Ljava/lang/String;
    :cond_6
    sget v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mSwapSDCard:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1715
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1716
    .restart local v4    # "cvs":Landroid/content/ContentValues;
    const-string v22, "_bucket_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v23, "_folder_name"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v22, "_storge_sdcard"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->insertDb(Landroid/content/ContentValues;)V

    .line 1721
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1722
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1723
    .restart local v21    # "tmpPath":Ljava/lang/String;
    const-string v22, "/storage/sdcard0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1724
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "/storage/sdcard0"

    const-string v24, "/storage/sdcard1"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 1728
    :cond_7
    :goto_5
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 1729
    .restart local v17    # "tmpBucketId":Ljava/lang/String;
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 1730
    .restart local v20    # "tmpName":Ljava/lang/String;
    const-string v22, "_bucket_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const-string v22, "_folder_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string v22, "_storge_sdcard"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->insertDb(Landroid/content/ContentValues;)V

    goto/16 :goto_2

    .line 1725
    .end local v17    # "tmpBucketId":Ljava/lang/String;
    .end local v20    # "tmpName":Ljava/lang/String;
    :cond_8
    const-string v22, "/storage/sdcard1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1726
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "/storage/sdcard1"

    const-string v24, "/storage/sdcard0"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto :goto_5

    .line 1739
    .end local v3    # "bucketId":Ljava/lang/String;
    .end local v4    # "cvs":Landroid/content/ContentValues;
    .end local v21    # "tmpPath":Ljava/lang/String;
    :cond_9
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultFilterDirectoryMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1740
    .local v9, "iteratoDefault":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1741
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1743
    .restart local v3    # "bucketId":Ljava/lang/String;
    invoke-interface {v13, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1744
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCard0Map:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1746
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1747
    .restart local v4    # "cvs":Landroid/content/ContentValues;
    const-string v22, "_bucket_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string v23, "_folder_name"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string v22, "_storge_sdcard"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->insertDefaultFolderDb(Landroid/content/ContentValues;)V

    .line 1752
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1753
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCardMatch0:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1754
    .restart local v17    # "tmpBucketId":Ljava/lang/String;
    const-string v22, "_bucket_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v23, "_folder_name"

    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCard1Map:Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v22, "_storge_sdcard"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->insertDefaultFolderDb(Landroid/content/ContentValues;)V

    goto/16 :goto_6

    .line 1758
    .end local v4    # "cvs":Landroid/content/ContentValues;
    .end local v17    # "tmpBucketId":Ljava/lang/String;
    :cond_b
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCard1Map:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1759
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1760
    .restart local v4    # "cvs":Landroid/content/ContentValues;
    const-string v22, "_bucket_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v23, "_folder_name"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v22, "_storge_sdcard"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->insertDefaultFolderDb(Landroid/content/ContentValues;)V

    .line 1765
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1766
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCardMatch1:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1767
    .restart local v17    # "tmpBucketId":Ljava/lang/String;
    const-string v22, "_bucket_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const-string v23, "_folder_name"

    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCard0Map:Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    const-string v22, "_storge_sdcard"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->insertDefaultFolderDb(Landroid/content/ContentValues;)V

    goto/16 :goto_6

    .line 1775
    .end local v3    # "bucketId":Ljava/lang/String;
    .end local v4    # "cvs":Landroid/content/ContentValues;
    .end local v17    # "tmpBucketId":Ljava/lang/String;
    :cond_c
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultFilterDirectoryMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1776
    .local v10, "iteratoDefaultToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 1777
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1779
    .restart local v3    # "bucketId":Ljava/lang/String;
    invoke-interface {v13, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 1781
    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1782
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCard0Map:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1783
    sget v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mSwapSDCard:I

    if-nez v22, :cond_e

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteItemFromDefalutTable(Ljava/lang/String;I)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v23, v0

    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCardMatch0:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteItemFromDefalutTable(Ljava/lang/String;I)V

    goto :goto_7

    .line 1787
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteItemFromDefalutTable(Ljava/lang/String;I)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v23, v0

    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCardMatch0:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteItemFromDefalutTable(Ljava/lang/String;I)V

    goto :goto_7

    .line 1791
    :cond_f
    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCard1Map:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1792
    sget v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mSwapSDCard:I

    if-nez v22, :cond_10

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteItemFromDefalutTable(Ljava/lang/String;I)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v23, v0

    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCardMatch1:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteItemFromDefalutTable(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 1796
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteItemFromDefalutTable(Ljava/lang/String;I)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v23, v0

    sget-object v22, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultSDCardMatch1:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->deleteItemFromDefalutTable(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 1803
    .end local v3    # "bucketId":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->closeDB()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private selectMenuGroupCur()V
    .locals 2

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAllMenuGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 3289
    :goto_0
    :pswitch_0
    return-void

    .line 3276
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 3278
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAllMenuGroup:Landroid/widget/RelativeLayout;

    const v1, 0x7f10064a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 3281
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAllMenuGroup:Landroid/widget/RelativeLayout;

    const v1, 0x7f100650

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 3276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static setAlertDialogIconAttribute(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p0, "builder"    # Landroid/app/AlertDialog$Builder;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 3333
    const v0, 0x1010355

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3334
    return-void
.end method

.method public static setLsfStartTime(Landroid/content/Context;I)V
    .locals 10
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "it"    # I

    .prologue
    const-wide/16 v8, 0x3c

    .line 4737
    if-lez p1, :cond_0

    const/16 v2, 0xe42

    if-ge p1, v2, :cond_0

    .line 4738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    mul-long/2addr v4, v8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 4739
    .local v0, "startTime":J
    const-string v2, "AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLsfStartTime startTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lsf_scg_start_time"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 4742
    .end local v0    # "startTime":J
    :cond_0
    return-void
.end method

.method private showCloudDraftCount()V
    .locals 9

    .prologue
    const/16 v8, 0x63

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2837
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    .line 2860
    :goto_0
    return-void

    .line 2838
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100712

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2839
    .local v2, "logined_draft_hint":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f10071a

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2841
    .local v3, "ublogin_draft_hint":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDraftCount()I

    move-result v1

    .line 2842
    .local v1, "draft_count":I
    if-gtz v1, :cond_1

    .line 2843
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2844
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2848
    :cond_1
    const/4 v0, 0x0

    .line 2850
    .local v0, "draftCountStr":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2851
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2852
    if-le v1, v8, :cond_2

    .line 2853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2858
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2859
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2855
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showCloudPanel()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2865
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    .line 2888
    :goto_0
    return-void

    .line 2867
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;-><init>(Landroid/app/Activity;)V

    .line 2868
    .local v0, "lcpaccount":Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2869
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2870
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2874
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100706

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2875
    .local v3, "user_id":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->userId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2876
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100708

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2878
    .local v2, "store_used":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100709

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2879
    .local v1, "store_total":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUsed:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSize:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2883
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initCloudSize()V

    goto :goto_0

    .line 2885
    .end local v1    # "store_total":Landroid/widget/TextView;
    .end local v2    # "store_used":Landroid/widget/TextView;
    .end local v3    # "user_id":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2886
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDraftCount()V
    .locals 6

    .prologue
    const/16 v5, 0x63

    .line 3003
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 3022
    :cond_0
    :goto_0
    return-void

    .line 3007
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDraftCount()I

    move-result v1

    .line 3008
    .local v1, "draft_count":I
    if-lez v1, :cond_0

    .line 3012
    const/4 v0, 0x0

    .line 3013
    .local v0, "draftCountStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v4, 0x7f100727

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3014
    .local v2, "drafthint":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3015
    if-le v1, v5, :cond_2

    .line 3016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3021
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3018
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showGoldBoxView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 3912
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideRightMenu()V

    .line 3913
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3914
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 3916
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-nez v3, :cond_1

    .line 3917
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxFactory;->createGoldBoxView(Landroid/content/Context;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    .line 3918
    const v3, 0x7f100643

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 3919
    .local v1, "main_layout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3920
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3922
    .end local v1    # "main_layout":Landroid/widget/FrameLayout;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v3, :cond_2

    .line 3923
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 3932
    :cond_2
    :goto_0
    return-void

    .line 3926
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->setVisibility(I)V

    .line 3927
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v4, 0x7f100654

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3928
    .local v0, "button":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3929
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    sget-object v4, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_GOLDBOX_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->entry(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    goto :goto_0
.end method

.method private showLeftWithoutNetworkDraftCount()V
    .locals 7

    .prologue
    const/16 v6, 0x63

    .line 2984
    const-string v3, "WYJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewPersonCenter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 3000
    :cond_0
    :goto_0
    return-void

    .line 2987
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDraftCount()I

    move-result v1

    .line 2988
    .local v1, "draft_count":I
    if-lez v1, :cond_0

    .line 2990
    const/4 v0, 0x0

    .line 2991
    .local v0, "draftCountStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v4, 0x7f10072f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2992
    .local v2, "drafthint":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2993
    if-le v1, v6, :cond_2

    .line 2994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2999
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2996
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showNormal()V
    .locals 2

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2610
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 2612
    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "toastMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2426
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2427
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2428
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2429
    return-void
.end method

.method private toggleStatusBarByOrientation()V
    .locals 1

    .prologue
    .line 3857
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    if-eqz v0, :cond_0

    .line 3860
    :cond_0
    return-void
.end method

.method private updateHiLightStatus(Landroid/view/View;)V
    .locals 10
    .param p1, "vClicked"    # Landroid/view/View;

    .prologue
    const v9, 0x7f10064f

    const v5, 0x7f10064c

    const v8, 0x7f020703

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 2504
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2598
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    .line 2599
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2604
    :cond_1
    return-void

    .line 2506
    :sswitch_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgLocal:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2508
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFolder:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2510
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 2511
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    const v5, 0x7f100652

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2519
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvLocal:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2520
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvFolder:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2522
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2523
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 2524
    .local v1, "scaleVal":F
    const v4, 0x7f09011a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v1

    .line 2525
    .local v3, "textSize22":F
    const v4, 0x7f09011b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v1

    .line 2527
    .local v2, "textSize14":F
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvLocal:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2528
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvFolder:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2530
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvWeibo:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 2531
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvWeibo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2534
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->resumeLocalData()V

    goto :goto_0

    .line 2540
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "scaleVal":F
    .end local v2    # "textSize14":F
    .end local v3    # "textSize22":F
    :sswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgLocal:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2541
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFolder:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2542
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 2543
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    const v5, 0x7f100652

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2548
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvLocal:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2549
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvFolder:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2550
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2551
    .restart local v0    # "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 2552
    .restart local v1    # "scaleVal":F
    const v4, 0x7f09011a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v1

    .line 2553
    .restart local v3    # "textSize22":F
    const v4, 0x7f09011b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v1

    .line 2555
    .restart local v2    # "textSize14":F
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvLocal:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2556
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvFolder:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2558
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvWeibo:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 2559
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvWeibo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 2566
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "scaleVal":F
    .end local v2    # "textSize14":F
    .end local v3    # "textSize22":F
    :sswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->pauseLocalData()V

    .line 2568
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgLocal:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2570
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFolder:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2572
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    .line 2573
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    const v5, 0x7f100652

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2576
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvLocal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2578
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvFolder:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2580
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvWeibo:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 2581
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvWeibo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d00bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 2504
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10064a -> :sswitch_0
        0x7f10064d -> :sswitch_1
        0x7f100650 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public LeftMenuConfirm()V
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->closeLeftPanel(Z)V

    .line 2681
    :cond_0
    return-void
.end method

.method public canRegisterAvator()Z
    .locals 8

    .prologue
    .line 4754
    const/4 v2, 0x0

    .line 4755
    .local v2, "ret":Z
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/ConnectionReceiver;->isConnection()Z

    move-result v0

    .line 4756
    .local v0, "connected":Z
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->checkNumber(I)Z

    move-result v1

    .line 4757
    .local v1, "dail":Z
    const v3, 0x6ddd00

    .line 4758
    .local v3, "sdac_time":I
    const-string v4, "AbstractGalleryActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate connected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sdac_time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " elapsedRealtime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4761
    const-string v4, "AbstractGalleryActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate getLsfStartTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getLsfStartTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentTimeMillis:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getLsfStartTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 4764
    const/4 v2, 0x1

    .line 4766
    :cond_0
    return v2
.end method

.method checkNumber(I)Z
    .locals 13
    .param p1, "limit"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4712
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4713
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 4715
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->lastCallLogMaxID:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " date > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " _id desc limit "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4721
    :cond_0
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4722
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, v12, :cond_0

    .line 4730
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v8

    .line 4732
    :goto_1
    return v1

    .line 4715
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->lastCallLogMaxID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 4730
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move v1, v9

    .line 4732
    goto :goto_1

    .line 4727
    :catch_0
    move-exception v7

    .line 4728
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "AbstractGalleryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4730
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public clearDate()V
    .locals 1

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->listItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3202
    :cond_0
    return-void
.end method

.method public clickFolderFilter()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1627
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1637
    :goto_0
    return-void

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1629
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterTipsRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1631
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1632
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v1, 0x7f100653

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1634
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1635
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1636
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public clickFolderFilterCancelButton()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1594
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1595
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideFolderFilterSpecView()Z

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1598
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1599
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->initSelectedMap()V

    .line 1600
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1601
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterTipsRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1604
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1605
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    if-nez v2, :cond_2

    .line 1606
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showTabMenu(Z)V

    .line 1609
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->setSelectedState(Z)V

    .line 1610
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->update()V

    .line 1611
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromSetting:Z

    if-eqz v2, :cond_3

    .line 1612
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromSetting:Z

    .line 1613
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->finish()V

    .line 1619
    :goto_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromMain:Z

    if-eqz v2, :cond_0

    .line 1620
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromMain:Z

    goto :goto_0

    .line 1615
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1616
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-path"

    const-string v3, "/local/all"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public closeLeftPanel(Z)V
    .locals 3
    .param p1, "isAnim"    # Z

    .prologue
    .line 1045
    const-string v0, "AbstractGalleryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeLeftPanel, isAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->toggleLeftDrawer()V

    .line 1058
    :cond_0
    return-void
.end method

.method public destoryDateMark()V
    .locals 2

    .prologue
    .line 4699
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 4700
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 4701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 4703
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4704
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDateMark:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4705
    return-void
.end method

.method protected disableToggleStatusBar()V
    .locals 1

    .prologue
    .line 3852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    .line 3853
    return-void
.end method

.method public dismissPopupWindow()V
    .locals 2

    .prologue
    .line 4309
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "kbg374, dismissPopupWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4313
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 4314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4316
    :cond_1
    return-void
.end method

.method public dismissWaitDialog()V
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDlgLoading:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDlgLoading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDlgLoading:Landroid/app/ProgressDialog;

    .line 1868
    :cond_0
    return-void
.end method

.method public fullScreen(Z)V
    .locals 3
    .param p1, "bFull"    # Z

    .prologue
    const/16 v2, 0x200

    .line 2790
    if-eqz p1, :cond_0

    .line 2791
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2792
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2793
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2794
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2801
    :goto_0
    return-void

    .line 2796
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2797
    .restart local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2798
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2799
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 656
    return-object p0
.end method

.method public getBatchServiceThreadPoolIfAvailable()Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    .locals 2

    .prologue
    .line 4182
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchServiceIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchService:Lcom/lenovo/scg/gallery3d/app/BatchService;

    if-eqz v0, :cond_0

    .line 4183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchService:Lcom/lenovo/scg/gallery3d/app/BatchService;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/BatchService;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0

    .line 4185
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Batch service unavailable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBottomMenuBarHeight()I
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 1065
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomMenuHeight()I
    .locals 3

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 693
    .local v0, "h":I
    return v0
.end method

.method public getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    if-nez v0, :cond_0

    .line 3835
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .line 3837
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getIsBGDataEnable()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsBGDataEnable:Z

    return v0
.end method

.method public getMoreAdapterData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrientationManager()Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method public getParentView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 3878
    const v1, 0x7f100646

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3880
    .local v0, "parent":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 3881
    const v1, 0x7f1001b6

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/ViewGroup;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 3883
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method public getPhotoEditorActionBar()Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    .locals 1

    .prologue
    .line 3895
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    return-object v0
.end method

.method public getSelectAdapterData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareAdapter()Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 4277
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method public getShareAdapterData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4267
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;
    .locals 1

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/lenovo/scg/gallery3d/app/StateManager;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/StateManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/lenovo/scg/gallery3d/app/StateManager;

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/lenovo/scg/gallery3d/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getTopTabHeight()I
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 688
    .local v0, "h":I
    return v0
.end method

.method public getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;
    .locals 1

    .prologue
    .line 3872
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    return-object v0
.end method

.method public getWeiboDataListener()Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDataListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;

    return-object v0
.end method

.method public hideDateMark()V
    .locals 2

    .prologue
    .line 4694
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 4695
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDateMark:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4696
    return-void
.end method

.method public hideGoldBoxView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 3935
    const-string v1, "jiaxw2"

    const-string v2, "hideGoldBoxView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v1, :cond_0

    .line 3937
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 3938
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->setVisibility(I)V

    .line 3940
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->requestRender()V

    .line 3942
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v2, 0x7f100654

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3943
    .local v0, "button":Landroid/widget/ImageButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3946
    .end local v0    # "button":Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public hideRightMenu()V
    .locals 2

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3198
    :cond_0
    return-void
.end method

.method public inflaterActionbar()V
    .locals 4

    .prologue
    .line 4577
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 4578
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4579
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4580
    .local v0, "actionbarLayout":Landroid/view/View;
    sget-object v2, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCameraParent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 4581
    sget-object v2, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCameraParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 4582
    sget-object v2, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCameraParent:Landroid/widget/RelativeLayout;

    const v3, 0x7f100096

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    .line 4583
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initActionBar(Landroid/widget/RelativeLayout;)V

    .line 4586
    .end local v0    # "actionbarLayout":Landroid/view/View;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public initCloudSize()V
    .locals 2

    .prologue
    .line 2892
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$19;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$19;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2925
    return-void
.end method

.method protected initGalleryView()V
    .locals 10

    .prologue
    const v9, 0x7f10065d

    const v8, 0x7f10065c

    const/16 v7, 0x8

    const/4 v6, -0x1

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 749
    .local v2, "l1":J
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f100646

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    .line 750
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    .line 893
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v4, p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setActivity(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    .line 753
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->init(Landroid/content/Context;)V

    .line 755
    const-string v4, "enter gallery"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 758
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$4;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v5, 0x7f100649

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    .line 781
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v5, 0x7f100654

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    const v5, 0x7f10064a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgLocal:Landroid/view/ViewGroup;

    .line 783
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgLocal:Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    const v5, 0x7f10064d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFolder:Landroid/view/ViewGroup;

    .line 788
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFolder:Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isWeiboSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 793
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    const v5, 0x7f100650

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    .line 794
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    invoke-static {v4, p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 800
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v5, 0x7f10064b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvLocal:Landroid/widget/TextView;

    .line 802
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v5, 0x7f10064e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvFolder:Landroid/widget/TextView;

    .line 804
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isWeiboSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 805
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v5, 0x7f100651

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTvWeibo:Landroid/widget/TextView;

    .line 808
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v5, 0x7f10065a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    .line 809
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    const v5, 0x7f10065b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    .line 817
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    .line 818
    const v4, 0x7f100655

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterRl:Landroid/widget/RelativeLayout;

    .line 819
    const v4, 0x7f100659

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterTipsRl:Landroid/widget/RelativeLayout;

    .line 820
    const v4, 0x7f100658

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterConfirm:Landroid/widget/ImageView;

    .line 821
    const v4, 0x7f100657

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterCancel:Landroid/widget/ImageView;

    .line 822
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterConfirm:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterCancel:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDefaultPage()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 837
    :goto_1
    :pswitch_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->nMenuOldId:I

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateMenuItem(I)V

    .line 841
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isWeiboSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->isTokenValidate(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 843
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 844
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 848
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initUpDownAnimation()V

    .line 852
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isWeiboSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 853
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .line 859
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-nez v4, :cond_6

    .line 860
    new-instance v4, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 877
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 882
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 883
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgLocal:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setSelected(Z)V

    goto/16 :goto_0

    .line 831
    :pswitch_1
    const v4, 0x7f100848

    iput v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->nMenuOldId:I

    goto :goto_1

    .line 834
    :pswitch_2
    const v4, 0x7f10084b

    iput v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->nMenuOldId:I

    goto :goto_1

    .line 884
    :cond_8
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 885
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 886
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 887
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 888
    .local v1, "screenWidth":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public initUpDownAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f05003c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopInAnimation:Landroid/view/animation/Animation;

    .line 3164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f050014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopOutAnimation:Landroid/view/animation/Animation;

    .line 3166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f050013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomInAnimation:Landroid/view/animation/Animation;

    .line 3169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f05003d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomOutAnimation:Landroid/view/animation/Animation;

    .line 3171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$23;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$23;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3192
    return-void
.end method

.method public initWeiboTab()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 4074
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 4102
    :goto_0
    return-void

    .line 4077
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 4078
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 4079
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4081
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 4082
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateHiLightStatus(Landroid/view/View;)V

    .line 4083
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    .line 4084
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getHasLogin()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->isTokenValidate(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 4085
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->isShowWelcomeViews()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4086
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->show()V

    .line 4087
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->showWelcomeLayout()V

    .line 4088
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->addWeiboList()V

    .line 4101
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    goto :goto_0

    .line 4089
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->isShowWeiboWelcomeViews()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4090
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->addWeiboLoginView()V

    .line 4091
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->showWelcomeLayout()V

    .line 4092
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setAlreadyShowWelcomViews()V

    .line 4093
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->addWeiboList()V

    goto :goto_1

    .line 4095
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->addWeiboList()V

    .line 4096
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4099
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->addWeiboLoginView()V

    goto :goto_1
.end method

.method protected isFullscreen()Z
    .locals 1

    .prologue
    .line 4110
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoldBoxVisible()Z
    .locals 1

    .prologue
    .line 3970
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowTab()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2784
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2785
    :cond_0
    return v0
.end method

.method public isShowTopTab()Z
    .locals 1

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowWeiboWelcomeViews()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3978
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v0

    .line 3979
    .local v0, "preferences":Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;
    if-eqz v0, :cond_0

    .line 3980
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->isAlreadyShowWelcomeViews()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 3982
    :cond_0
    return v1
.end method

.method public isTimeTagListViewVisible()Z
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLocalTimeTagListView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 31
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3598
    const-string v4, "AbstractGalleryActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onActivityResult, requestCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",resultCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    const v4, 0x9999

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 3601
    const/4 v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    .line 3742
    :cond_0
    :goto_0
    return-void

    .line 3602
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v13

    .line 3603
    .local v13, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    if-eqz v13, :cond_2

    instance-of v4, v13, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    if-eqz v4, :cond_2

    .line 3604
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 3605
    .local v14, "bundle":Landroid/os/Bundle;
    const-string v4, "get multi folder id"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3606
    .local v17, "folderId":Ljava/lang/String;
    const-string v4, "get multi folder name"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3607
    .local v18, "folderName":Ljava/lang/String;
    check-cast v13, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .end local v13    # "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->setFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 3610
    .end local v14    # "bundle":Landroid/os/Bundle;
    .end local v17    # "folderId":Ljava/lang/String;
    .end local v18    # "folderName":Ljava/lang/String;
    :cond_2
    const v4, 0x1e07c

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 3611
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 3614
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 3615
    .local v5, "contactData":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 3618
    const-wide/16 v22, -0x1

    .line 3619
    .local v22, "lContactId":J
    const/16 v26, 0x0

    .line 3620
    .local v26, "sContactName":Ljava/lang/String;
    const/16 v27, 0x0

    .line 3623
    .local v27, "sContactNumber":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "has_phone_number"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "display_name"

    aput-object v7, v6, v4

    .line 3624
    .local v6, "sProjection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3625
    .local v15, "cursor":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3626
    const-string v4, "has_phone_number"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3627
    .local v19, "hasPhone":Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3628
    const-string v4, "display_name"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 3629
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 3630
    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "data1"

    aput-object v7, v9, v4

    .line 3631
    .local v9, "sPhoneProjection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contact_id = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 3633
    .local v21, "phones":Landroid/database/Cursor;
    if-eqz v21, :cond_3

    .line 3634
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3635
    const-string v4, "data1"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 3636
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 3639
    .end local v9    # "sPhoneProjection":[Ljava/lang/String;
    .end local v21    # "phones":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3643
    .end local v5    # "contactData":Landroid/net/Uri;
    .end local v6    # "sProjection":[Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v19    # "hasPhone":Ljava/lang/String;
    .end local v22    # "lContactId":J
    .end local v26    # "sContactName":Ljava/lang/String;
    .end local v27    # "sContactNumber":Ljava/lang/String;
    :cond_4
    const v4, 0x1e079

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 3645
    if-nez p2, :cond_0

    .line 3646
    const-string v4, "album set name canceled"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3651
    :cond_5
    const v4, 0x1e07a

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    .line 3653
    if-nez p2, :cond_0

    .line 3654
    const-string v4, "albumset set name canceled"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3660
    :cond_6
    const v4, 0x1e07b

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 3662
    if-nez p2, :cond_0

    .line 3663
    const-string v4, "face select canceled"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3669
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 3670
    const-string v4, "AbstractGalleryActivity"

    const-string/jumbo v7, "requestCode = WeiboList.REQUST_CODE_MY_GALLERY_PICKED_MAIN!!"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    if-eqz p3, :cond_0

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 3673
    const-string/jumbo v4, "return_single_pic_key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3674
    .local v28, "singlePicUri":Ljava/lang/String;
    const-string v4, "AbstractGalleryActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestCode = BoxDataClass.M_REQUEST_CODE, singlePicUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    if-eqz v28, :cond_0

    .line 3678
    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 3679
    .local v20, "inputPhotoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->doCropPhoto(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3685
    .end local v20    # "inputPhotoUri":Landroid/net/Uri;
    .end local v28    # "singlePicUri":Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    .line 3686
    const-string v4, "AbstractGalleryActivity"

    const-string/jumbo v7, "requestCode = WeiboList.REQUST_CODE_PHOTO_PICKED_WITH_DATA_MAIN!!"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    if-eqz p3, :cond_0

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 3696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v4, :cond_0

    .line 3697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setBackgroundImageFromPath(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3703
    :cond_9
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 3704
    const-string v4, "AbstractGalleryActivity"

    const-string/jumbo v7, "requestCode = WeiboList.REQUST_CODE_PHOTOGRAPHER_PICKED_MAIN!!"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    if-eqz p3, :cond_0

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 3707
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v30

    .line 3709
    .local v30, "userInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    const-string/jumbo v4, "path"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3710
    .local v16, "dataurl":Ljava/lang/String;
    const-string v4, "img_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    .line 3711
    .local v24, "lid":J
    const-string/jumbo v4, "user pic id=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v4, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3712
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v30

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;JLcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateUserInfo:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;

    .line 3713
    new-instance v29, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateUserInfo:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3714
    .local v29, "update":Ljava/lang/Thread;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->start()V

    .line 3716
    const-string v4, "AbstractGalleryActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestCode == REQUST_CODE_PHOTOGRAPHER_PICKED, dataurl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v4, :cond_0

    .line 3718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setBackgroundImageFromPath(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3726
    .end local v16    # "dataurl":Ljava/lang/String;
    .end local v24    # "lid":J
    .end local v29    # "update":Ljava/lang/Thread;
    .end local v30    # "userInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_a
    const v4, 0x80cd

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 3727
    const-string v4, "AbstractGalleryActivity"

    const-string/jumbo v7, "requestCode = SinaWeiboFacade.REQUST_CODE_SSO_CALLBACK"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 3729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->ssoAuthorizeCallBack(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 3736
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 3738
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v4
.end method

.method public onAuthPass()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2616
    const-string v5, "AbstractGalleryActivity"

    const-string/jumbo v6, "onAuthPass"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->storeHasLogin(Z)V

    .line 2621
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2622
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isGoldBoxSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2623
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showUserInfoMatchWithGoldBox()V

    .line 2624
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showDraftCount()V

    .line 2631
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isWeiboSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2633
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2637
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-nez v5, :cond_6

    .line 2638
    new-instance v5, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;-><init>()V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .line 2639
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v5, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteTimeDb(Landroid/content/Context;)V

    .line 2640
    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .line 2647
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2648
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->closeLeftPanel(Z)V

    .line 2652
    :cond_2
    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    if-eq v5, v7, :cond_3

    .line 2653
    iput v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 2657
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2658
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->showWelcomeLayout()V

    .line 2659
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setAlreadyShowWelcomViews()V

    .line 2660
    const/4 v5, 0x2

    iput v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 2661
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->addWeiboList()V

    .line 2665
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v1

    .line 2666
    .local v1, "userInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v2

    .line 2668
    .local v2, "weibo_id":J
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v4

    .line 2669
    .local v4, "weibo_userName":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;JLjava/lang/String;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->saveUserInfo:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;

    .line 2671
    new-instance v0, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->saveUserInfo:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2674
    .local v0, "saveuser":Ljava/lang/Thread;
    return-void

    .line 2626
    .end local v0    # "saveuser":Ljava/lang/Thread;
    .end local v1    # "userInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .end local v2    # "weibo_id":J
    .end local v4    # "weibo_userName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showUserInfo()V

    goto :goto_0

    .line 2642
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v5, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteTimeDb(Landroid/content/Context;)V

    .line 2643
    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 3802
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3803
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->closeLeftPanel(Z)V

    .line 3831
    :cond_0
    :goto_0
    return-void

    .line 3809
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v2, :cond_2

    .line 3810
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateDisplayType()Z

    move-result v0

    .line 3811
    .local v0, "result":Z
    const-string v2, "AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    if-nez v0, :cond_0

    .line 3819
    .end local v0    # "result":Z
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 3822
    .local v1, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    if-eqz v1, :cond_0

    .line 3823
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 3825
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3827
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method public onBackPressedToGoldBoxView()V
    .locals 2

    .prologue
    .line 3949
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    .line 3950
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3951
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->onBackPressed()V

    .line 3954
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1121
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLockClick:Z

    if-eqz v10, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1123
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    if-eqz v0, :cond_2

    instance-of v10, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-nez v10, :cond_0

    instance-of v10, v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    if-nez v10, :cond_0

    .line 1127
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1129
    :pswitch_1
    iget v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    if-eqz v10, :cond_0

    .line 1130
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    .line 1131
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showManual(Z)V

    .line 1132
    const/4 v10, 0x0

    iput v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 1133
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->resumeLocalData()V

    .line 1135
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v10

    const-string v11, "category_mainlist"

    const-string v12, "action_mainlist_local_btn"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1140
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideWeiboLoginLayout()V

    .line 1143
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v10, :cond_3

    .line 1144
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/16 v11, 0x8

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setVisibilityViews(II)V

    .line 1145
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->clearMemory()V

    .line 1148
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1149
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestRender()V

    .line 1151
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1152
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1154
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateHiLightStatus(Landroid/view/View;)V

    .line 1156
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v11, 0x7f100a28

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1157
    .local v9, "vGroupList":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 1158
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    :cond_5
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1169
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    const v11, 0x7f100a36

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1170
    .local v5, "rlRightMenuWb":Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_6

    .line 1171
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1180
    :cond_6
    const v10, 0x7f100848

    invoke-direct {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onMenuItemClicked(I)V

    goto/16 :goto_0

    .line 1186
    .end local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    .end local v9    # "vGroupList":Landroid/view/View;
    :pswitch_2
    iget v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 1187
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    .line 1188
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showManual(Z)V

    .line 1189
    const/4 v10, 0x1

    iput v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 1190
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->resumeLocalData()V

    .line 1191
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v10

    const-string v11, "category_mainlist"

    const-string v12, "action_mainlist_local_btn"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1193
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideWeiboLoginLayout()V

    .line 1194
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v10, :cond_7

    .line 1195
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/16 v11, 0x8

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setVisibilityViews(II)V

    .line 1196
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->clearMemory()V

    .line 1198
    :cond_7
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1199
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestRender()V

    .line 1200
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_8

    .line 1201
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1204
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateHiLightStatus(Landroid/view/View;)V

    .line 1206
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    const v11, 0x7f100a28

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1207
    .restart local v9    # "vGroupList":Landroid/view/View;
    if-eqz v9, :cond_9

    .line 1208
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    :cond_9
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1213
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1215
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    const v11, 0x7f100a36

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1216
    .restart local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_a

    .line 1217
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1220
    :cond_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1221
    .local v2, "data":Landroid/os/Bundle;
    const-string/jumbo v10, "media-path"

    const-string v11, "/local/all"

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    if-eqz v0, :cond_b

    .line 1223
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v10, v0, v11, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchStateNotDestory(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1227
    :goto_1
    const/4 v10, -0x1

    iput v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->nMenuOldId:I

    goto/16 :goto_0

    .line 1225
    :cond_b
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v10, v11, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1232
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    .end local v9    # "vGroupList":Landroid/view/View;
    :pswitch_3
    iget v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c

    .line 1234
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v10, :cond_0

    .line 1235
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->moveToFirst()V

    goto/16 :goto_0

    .line 1239
    :cond_c
    const/4 v10, 0x2

    iput v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 1241
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v10

    const-string v11, "category_mainlist"

    const-string v12, "action_mainlist_weibo_btn"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1247
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initWeiboTab()V

    .line 1251
    const/4 v1, 0x1

    .line 1252
    .local v1, "bFlag":Z
    if-eqz v1, :cond_f

    .line 1253
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1254
    const/4 v8, 0x0

    .line 1255
    .local v8, "tvMenuName":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    const v11, 0x7f100a36

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1256
    .restart local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    if-nez v5, :cond_d

    .line 1257
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1258
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0401ac

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1259
    .restart local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 1261
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1262
    .local v4, "lpMenu":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x1

    const v11, 0x7f10065b

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1263
    const/16 v10, 0xb

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1264
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v10, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    const v10, 0x7f100a37

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "tvMenuName":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 1267
    .restart local v8    # "tvMenuName":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->rightMenuOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1269
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "lpMenu":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1270
    if-nez v8, :cond_e

    .line 1271
    const v10, 0x7f100a37

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "tvMenuName":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 1274
    .restart local v8    # "tvMenuName":Landroid/widget/TextView;
    :cond_e
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getHasLogin()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1276
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->getGroupSelectCur()Ljava/lang/String;

    move-result-object v7

    .line 1277
    .local v7, "sGroupName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1278
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    .end local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    .end local v7    # "sGroupName":Ljava/lang/String;
    .end local v8    # "tvMenuName":Landroid/widget/TextView;
    :cond_f
    :goto_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1289
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1281
    .restart local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    .restart local v8    # "tvMenuName":Landroid/widget/TextView;
    :cond_10
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f06d2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1282
    .local v6, "sAll":Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1311
    .end local v1    # "bFlag":Z
    .end local v5    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    .end local v6    # "sAll":Ljava/lang/String;
    .end local v8    # "tvMenuName":Landroid/widget/TextView;
    :pswitch_4
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isGoldBoxSupported()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 1313
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v10, :cond_11

    .line 1314
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->hideGroupMenu()Z

    .line 1316
    :cond_11
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showGoldBoxView()V

    goto/16 :goto_0

    .line 1319
    :cond_12
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v10

    const-string v11, "category_mainlist"

    const-string v12, "action_mainlist_camera_btn"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1322
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideRightMenu()V

    .line 1324
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 1325
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 1328
    :cond_13
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1335
    :pswitch_5
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v10

    const-string v11, "category_mainlist"

    const-string v12, "action_mainlist_personcenter_btn"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1338
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_14

    .line 1339
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1342
    :cond_14
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v10, :cond_15

    .line 1343
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->hideGroupMenu()Z

    .line 1347
    :cond_15
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 1348
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 1353
    :cond_16
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isNetSupported()Z

    move-result v10

    if-nez v10, :cond_18

    .line 1354
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v10, :cond_17

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initLeftWithoutNetworkMenu()V

    .line 1355
    :cond_17
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showLeftWithoutNetworkDraftCount()V

    .line 1371
    :goto_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->closeLeftPanel(Z)V

    goto/16 :goto_0

    .line 1356
    :cond_18
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1357
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v10, :cond_19

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initLeftCloudPanel()V

    .line 1358
    :cond_19
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showCloudPanel()V

    .line 1359
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showCloudDraftCount()V

    goto :goto_3

    .line 1360
    :cond_1a
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isGoldBoxSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1361
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v10, :cond_1b

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initLeftPanelMatchWithGoldbox()V

    .line 1362
    :cond_1b
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showUserInfoMatchWithGoldBox()V

    .line 1363
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showDraftCount()V

    goto :goto_3

    .line 1365
    :cond_1c
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v10, :cond_1d

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initLeftPanel()V

    .line 1366
    :cond_1d
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showUserInfo()V

    .line 1367
    const/4 v10, -0x1

    invoke-direct {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->enablePscenterWidget(I)V

    goto :goto_3

    .line 1379
    :pswitch_6
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v10

    const-string v11, "category_mainlist"

    const-string v12, "action_mainlist_category_btn"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1399
    const-string v10, "AbstractGalleryActivity"

    const-string/jumbo v11, "onClick, R.id.btnRightMenu"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->addLocalTimeListView()V

    goto/16 :goto_0

    .line 1409
    :pswitch_7
    const-string v10, "AbstractGalleryActivity"

    const-string v11, "folder setting button is clicked"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showFolderFilterViewFromSetting(Z)V

    goto/16 :goto_0

    .line 1413
    :pswitch_8
    const-string v10, "AbstractGalleryActivity"

    const-string v11, "confirm button is clicked"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterRl:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1415
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterTipsRl:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1416
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showTabMenu(Z)V

    .line 1417
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->setSelectedState(Z)V

    .line 1419
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->save2FolderFilterDB()V

    .line 1420
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->update()V

    .line 1421
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/scg/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V

    .line 1422
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromSetting:Z

    if-eqz v10, :cond_1e

    .line 1423
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromSetting:Z

    .line 1424
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->finish()V

    .line 1430
    :goto_4
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromMain:Z

    if-eqz v10, :cond_0

    .line 1431
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromMain:Z

    goto/16 :goto_0

    .line 1426
    :cond_1e
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1427
    .restart local v2    # "data":Landroid/os/Bundle;
    const-string/jumbo v10, "media-path"

    const-string v11, "/local/all"

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v10, v0, v11, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_4

    .line 1436
    .end local v2    # "data":Landroid/os/Bundle;
    :pswitch_9
    const-string v10, "AbstractGalleryActivity"

    const-string v11, "cancel button is clicked"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->clickFolderFilterCancelButton()V

    goto/16 :goto_0

    .line 1127
    :pswitch_data_0
    .packed-switch 0x7f10064a
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, -0x1

    .line 594
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 596
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 597
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/lenovo/scg/gallery3d/app/StateManager;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 606
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->onConfigurationChanged()V

    .line 607
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 608
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 609
    return-void

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 599
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 600
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 601
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 602
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 523
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 524
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 526
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    .line 527
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 528
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->doBindBatchService()V

    .line 534
    const-string/jumbo v2, "wwf5"

    const-string v3, "avatar start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->isBGDataEnable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsBGDataEnable:Z

    .line 536
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarSuppored()Z

    move-result v1

    .line 537
    .local v1, "isAvatarSuppored":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarShareReportSupported()Z

    move-result v0

    .line 542
    .local v0, "isAvatarShareReportSuppored":Z
    const-string v2, "AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate, mIsBGDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsBGDataEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAvatarSuppored="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAvatarShareReportSuppored="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz v1, :cond_2

    .line 546
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsBGDataEnable:Z

    if-nez v2, :cond_1

    .line 548
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    .line 568
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 571
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_mainlist"

    const-string v4, "action_mainlist_oncreate"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 574
    const-string/jumbo v2, "wwf5"

    const-string v3, "avatar end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void

    .line 551
    :cond_1
    if-eqz v0, :cond_0

    .line 553
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    goto :goto_0

    .line 560
    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 613
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 616
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mStartByThirdApp:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v4

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 632
    .local v0, "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    if-nez v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    const v3, 0x7f10065b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 636
    .local v1, "vLeftMenu":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 3508
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3509
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v3, :cond_0

    .line 3510
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->lockRenderThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3513
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/StateManager;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3517
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v3, :cond_1

    .line 3518
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 3524
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3525
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3527
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v3, :cond_2

    .line 3529
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->onDestroy()V

    .line 3538
    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3549
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    if-eqz v3, :cond_3

    .line 3550
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->stopAnimation()V

    .line 3554
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->doUnbindBatchService()V

    .line 3556
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->releaseInstance()V

    .line 3557
    return-void

    .line 3514
    :catch_0
    move-exception v1

    .line 3515
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3517
    :try_start_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v3, :cond_1

    .line 3518
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3544
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3545
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3517
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v4, :cond_4

    .line 3518
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    :cond_4
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 646
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onMenuPressed()V

    .line 648
    const/4 v0, 0x1

    .line 650
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLogoff()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2710
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->storeHasLogin(Z)V

    .line 2716
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 2717
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestRender()V

    .line 2719
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2722
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 2723
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2727
    .end local v0    # "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    const v3, 0x7f100a36

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2728
    .local v1, "rlRightMenuWb":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_1

    .line 2729
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2733
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2734
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFolder:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateHiLightStatus(Landroid/view/View;)V

    .line 2735
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2736
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2747
    :goto_0
    return-void

    .line 2738
    :cond_2
    iput v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 2739
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgLocal:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateHiLightStatus(Landroid/view/View;)V

    .line 2740
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2743
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onObtainUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 2705
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->storeUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V

    .line 2706
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3842
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 3843
    .local v0, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 3845
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3847
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3474
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3478
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 3481
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->releaseInstance()V

    .line 3483
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->pauseLocalData()V

    .line 3486
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsCameraStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 3487
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsPaused:Z

    .line 3488
    const-string v0, "FaceDataSrv on pause"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3493
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v0, :cond_1

    .line 3495
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->onPause()V

    .line 3499
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3500
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->stopAnimation(Z)V

    .line 3503
    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3372
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3374
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->init(Landroid/content/Context;)V

    .line 3378
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isWeiboSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3380
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3394
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->isBGDataEnable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsBGDataEnable:Z

    .line 3395
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarSuppored()Z

    move-result v2

    .line 3396
    .local v2, "isAvatarSuppored":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarShareReportSupported()Z

    move-result v1

    .line 3399
    .local v1, "isAvatarShareReportSuppored":Z
    const-string v3, "AbstractGalleryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume, mIsBGDataEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsBGDataEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAvatarSuppored="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAvatarShareReportSuppored="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    if-eqz v2, :cond_1

    .line 3404
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsBGDataEnable:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 3406
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->enableReport()V

    .line 3411
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 3413
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 3414
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->resumeLocalData()V

    .line 3418
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 3419
    const-string v3, "AbstractGalleryActivity"

    const-string/jumbo v4, "onResume, mWeiboList != null && mTabCur == TAB_INDEX_WEIBO, setBackgroundImage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setBackgroundImage()V

    .line 3424
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsCameraStarted:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsPaused:Z

    if-eqz v3, :cond_5

    .line 3425
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsPaused:Z

    .line 3426
    const-string v3, "FaceDataSrv on resume"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3429
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3430
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->continueAnimation()V

    .line 3435
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 3436
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->onResume()V

    .line 3440
    :cond_6
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3441
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 3442
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    if-eqz v0, :cond_7

    instance-of v3, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    if-eqz v3, :cond_7

    .line 3443
    new-instance v3, Landroid/content/Intent;

    const-string v4, "Cloud init login state action"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3446
    .end local v0    # "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_7
    return-void

    .line 3384
    .end local v1    # "isAvatarShareReportSuppored":Z
    .end local v2    # "isAvatarSuppored":Z
    :cond_8
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 3386
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgWeibo:Landroid/view/ViewGroup;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 581
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 582
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    goto :goto_0

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v2, :cond_1

    .line 587
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    :cond_1
    throw v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 451
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->isLoadImage(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 3305
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 3306
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3307
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$24;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$24;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    .line 3314
    .local v0, "onCancel":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$25;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$25;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    .line 3322
    .local v1, "onClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No Storage"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No external storage available."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3326
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3329
    .end local v0    # "onCancel":Landroid/content/DialogInterface$OnCancelListener;
    .end local v1    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 3338
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3342
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3350
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGoldBox:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->onStop()V

    .line 3355
    :cond_1
    return-void
.end method

.method protected onStorageReady()V
    .locals 1

    .prologue
    .line 3294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3301
    :cond_0
    return-void
.end method

.method protected pauseLocalData()V
    .locals 2

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->pause()V

    .line 3450
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 3451
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->onPause()V

    .line 3452
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 3455
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->pause()V

    .line 3456
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3458
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 3467
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->clear()V

    .line 3468
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;->clear()V

    .line 3470
    return-void

    .line 3458
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    :cond_2
    throw v0
.end method

.method public pickContact(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 3156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3157
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3158
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3159
    const v1, 0x1e07c

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3160
    return-void
.end method

.method public removeLocalTimeTagListView()V
    .locals 2

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLocalTimeTagListView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1495
    const v1, 0x7f100643

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1496
    .local v0, "main_layout":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLocalTimeTagListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1497
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLocalTimeTagListView:Landroid/widget/LinearLayout;

    .line 1499
    .end local v0    # "main_layout":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public restartFaceSetPage()V
    .locals 4

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRestartHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3779
    return-void
.end method

.method protected resumeLocalData()V
    .locals 2

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-nez v0, :cond_0

    .line 3368
    :goto_0
    return-void

    .line 3359
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 3361
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->resume()V

    .line 3362
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3364
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 3366
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->onResume()V

    .line 3367
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->resume()V

    goto :goto_0

    .line 3364
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public setActionBarOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4281
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarDelete:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4282
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4285
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToQieziLL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 4286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToQieziLL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4288
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMMSLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 4289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMMSLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4291
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiXinLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 4292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiXinLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4294
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 4295
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiBoLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4297
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 4298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4300
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToQQSpace:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 4301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToQQSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4303
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToMoreLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 4304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToMoreLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4306
    :cond_7
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarSelectTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4534
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarSelectTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4537
    :cond_0
    return-void
.end method

.method public setAlreadyShowWelcomViews()V
    .locals 2

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v0

    .line 3987
    .local v0, "preferences":Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;
    if-eqz v0, :cond_0

    .line 3988
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->setAlreadyShowWelcomeViews(Z)V

    .line 3990
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const v1, 0x7f0400f6

    .line 698
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsCameraStarted:Z

    .line 700
    if-ne p1, v1, :cond_0

    .line 701
    const-string v0, "layout is gallery"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsCameraStarted:Z

    .line 715
    :cond_0
    const v0, 0x7f1005a8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .line 717
    if-ne p1, v1, :cond_1

    .line 725
    :cond_1
    const v0, 0x7f1005aa

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPlayPanorama:Landroid/widget/ImageView;

    .line 726
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPlayPanorama:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPlayPanorama:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    :cond_2
    const v0, 0x7f1005ab

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDateMark:Landroid/widget/TextView;

    .line 744
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mIsCameraStarted:Z

    if-eqz v0, :cond_3

    .line 745
    :cond_3
    return-void
.end method

.method public setDataListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDataListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;

    .line 433
    return-void
.end method

.method public setDateItem(Ljava/lang/String;I)V
    .locals 3
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 3205
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->listItem:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->listItem:Ljava/util/ArrayList;

    .line 3206
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3207
    .local v0, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Today"

    if-ne p1, v1, :cond_2

    .line 3208
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f06db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3214
    :cond_1
    :goto_0
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    const-string/jumbo v1, "point"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3217
    return-void

    .line 3209
    :cond_2
    const-string v1, "Week"

    if-ne p1, v1, :cond_3

    .line 3210
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f06ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3211
    :cond_3
    const-string v1, "Fature"

    if-ne p1, v1, :cond_1

    .line 3212
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0966

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setDateMark(Ljava/lang/String;)V
    .locals 4
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 4666
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDateMark:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4667
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4668
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDateMark:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4669
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 4670
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 4671
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 4672
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$40;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$40;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4690
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mDateMark:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4691
    return-void
.end method

.method public setEmptyViewVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 455
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mEmptyView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 459
    const v1, 0x7f100648

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mEmptyView:Landroid/widget/LinearLayout;

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 468
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mEmptyView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method protected setGalleryFlag()V
    .locals 1

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setGalleryFlag()V

    .line 3904
    return-void
.end method

.method public setMenuOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 4271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 4272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4274
    :cond_0
    return-void
.end method

.method public setPhotoEditorActionBar(Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;)V
    .locals 0
    .param p1, "photoEditorActionBar"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .prologue
    .line 3891
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .line 3892
    return-void
.end method

.method public setSelectedAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 4255
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectedAction:Ljava/lang/String;

    .line 4256
    return-void
.end method

.method public setSelectedMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 4250
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectedMimeType:Ljava/lang/String;

    .line 4251
    return-void
.end method

.method public showActionBar(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 4592
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    if-nez v6, :cond_0

    .line 4594
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100643

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 4595
    .local v5, "vGalleryAll":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_0

    .line 4596
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4597
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040014

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    .line 4599
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4601
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4603
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initActionBar(Landroid/widget/RelativeLayout;)V

    .line 4607
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "vGalleryAll":Landroid/widget/FrameLayout;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_3

    .line 4608
    if-eqz p1, :cond_5

    .line 4611
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->getActionBarListener()Ljava/util/ArrayList;

    move-result-object v1

    .line 4612
    .local v1, "arrListener":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    .line 4614
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 4615
    .local v0, "actionBarListener":Landroid/view/View$OnClickListener;
    if-eqz v0, :cond_1

    .line 4616
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setActionBarOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4618
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$OnItemClickListener;

    .line 4619
    .local v4, "menuListener":Landroid/widget/AdapterView$OnItemClickListener;
    if-eqz v4, :cond_2

    .line 4620
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setMenuOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4625
    .end local v0    # "actionBarListener":Landroid/view/View$OnClickListener;
    .end local v4    # "menuListener":Landroid/widget/AdapterView$OnItemClickListener;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4633
    .end local v1    # "arrListener":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    .line 4634
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4637
    :cond_4
    return-void

    .line 4627
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarRL:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAlbumSpecView()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1565
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1566
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "first_show_album_title_spec"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1567
    .local v3, "tmp":Z
    if-eqz v3, :cond_0

    .line 1568
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "first_show_album_title_spec"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1569
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04001f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlbumSpecView:Landroid/widget/LinearLayout;

    .line 1570
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlbumSpecView:Landroid/widget/LinearLayout;

    const v5, 0x7f1000f1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1571
    .local v0, "albumspecview":Landroid/view/View;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlbumSpecView:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 1572
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1573
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAlbumSpecView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1575
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$9;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1582
    .end local v0    # "albumspecview":Landroid/view/View;
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public showFolderFilterSpecView()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 1509
    const-string v9, "AbstractGalleryActivity"

    const-string v10, "kbg374, showFolderFilterSpecView"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1511
    const-string v9, "AbstractGalleryActivity"

    const-string v10, "kbg374, showFolderFilterSpecView, is row, return"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1516
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v9, "first_show_filter_title_spec"

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1517
    .local v7, "tmp":Z
    if-eqz v7, :cond_0

    .line 1520
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0400da

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    .line 1522
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    const v10, 0x7f10055d

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1523
    .local v1, "folderFilterSpecVisibleTv":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<font color=\"#19d175\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0964

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</font>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1524
    .local v8, "visiblePlus":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1527
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    const v10, 0x7f10055e

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1528
    .local v0, "folderFilterSpecInvisibleTv":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<font color=\"#f84567\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0962

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</font>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1530
    .local v4, "inVisiblePlus":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1532
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    const v10, 0x7f10055c

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1533
    .local v3, "folderfilterspecview":Landroid/view/View;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    const v10, 0x7f10055f

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1534
    .local v2, "folderfilterspecfinish":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    invoke-static {v9}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 1535
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1536
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterSpecView:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    new-instance v9, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$7;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1544
    new-instance v9, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$8;

    invoke-direct {v9, p0, v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public showFolderFilterViewFromSetting(Z)V
    .locals 5
    .param p1, "isFromSetting"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1818
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1819
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    if-eqz v2, :cond_0

    .line 1860
    :goto_0
    return-void

    .line 1831
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showFolderFilterSpecView()V

    .line 1833
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->setSelectedState(Z)V

    .line 1834
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showTabMenu(Z)V

    .line 1835
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1837
    if-eqz p1, :cond_2

    .line 1838
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromSetting:Z

    .line 1839
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showNormal()V

    .line 1840
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1841
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-path"

    const-string v3, "/local/all"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    if-eqz v0, :cond_1

    .line 1844
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1846
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1849
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_2
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterViewFromMain:Z

    .line 1851
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 1852
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->update()V

    .line 1853
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 1854
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMenuGroupCur:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1856
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1857
    .restart local v1    # "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-path"

    const-string v3, "/local/all"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public showMainMenu(Z)V
    .locals 6
    .param p1, "bShow"    # Z

    .prologue
    const v5, 0x7f100653

    const/16 v4, 0x200

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2751
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 2780
    :goto_0
    return-void

    .line 2752
    :cond_0
    if-eqz p1, :cond_1

    .line 2753
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2754
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2755
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2756
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 2758
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLockClick:Z

    .line 2759
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2760
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2761
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2763
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2764
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 2765
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2767
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2768
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2769
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2771
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2772
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 2773
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2775
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2776
    .restart local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2777
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2778
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0
.end method

.method public showManual(Z)V
    .locals 1
    .param p1, "isFolder"    # Z

    .prologue
    .line 1095
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isWeiboSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    if-eqz p1, :cond_2

    .line 1098
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showFolderFilterSpecView()V

    goto :goto_0

    .line 1100
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showAlbumSpecView()V

    goto :goto_0
.end method

.method public showPanorama(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1106
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPlayPanorama:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1108
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    if-eqz v0, :cond_2

    instance-of v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-nez v4, :cond_2

    .line 1109
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPlayPanorama:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1112
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPlayPanorama:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 1113
    .local v1, "mCurrentShow":Z
    :goto_1
    if-eq p1, v1, :cond_0

    .line 1114
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPlayPanorama:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "mCurrentShow":Z
    :cond_3
    move v1, v2

    .line 1112
    goto :goto_1

    .restart local v1    # "mCurrentShow":Z
    :cond_4
    move v2, v3

    .line 1114
    goto :goto_2
.end method

.method public showSCAbout()V
    .locals 3

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initAbout()V

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->appIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->appName(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->commit()V

    .line 2088
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2089
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weibo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weiboUrl(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->commit()V

    .line 2094
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "from camera"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->startAboutActivity(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 2095
    return-void
.end method

.method public showSGAbout()V
    .locals 3

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initAbout()V

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    const v1, 0x7f020601

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->appIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0959

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->appName(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->commit()V

    .line 2074
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f07fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weibo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f07fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weiboUrl(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->commit()V

    .line 2080
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAboutManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "from gallery"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->startAboutActivity(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 2081
    return-void
.end method

.method public showTabMenu(Z)V
    .locals 4
    .param p1, "bShow"    # Z

    .prologue
    const v3, 0x7f100653

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2805
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2826
    :goto_0
    return-void

    .line 2806
    :cond_0
    if-eqz p1, :cond_1

    .line 2807
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLockClick:Z

    .line 2808
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2809
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2810
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2812
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2813
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 2814
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2817
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2818
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2819
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2821
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupTopTab:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2822
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 2823
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected showUserInfo()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0x8

    .line 3073
    const/4 v9, 0x0

    .line 3074
    .local v9, "userInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getHasLogin()Z

    move-result v2

    .line 3075
    .local v2, "bShow":Z
    new-instance v10, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isLogin()Z

    move-result v8

    .line 3076
    .local v8, "tokenValid":Z
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v10, :cond_1

    .line 3077
    const-string v10, "AbstractGalleryActivity"

    const-string/jumbo v11, "showUserInfo, mViewPersonCenter == null!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_0
    :goto_0
    return-void

    .line 3080
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getForeignPscenter()Z

    move-result v10

    if-nez v10, :cond_2

    if-nez v2, :cond_2

    if-eqz v8, :cond_4

    .line 3081
    :cond_2
    const-string v10, "AbstractGalleryActivity"

    const-string/jumbo v11, "showUserInfo, display login layout!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v9

    .line 3083
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3084
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3085
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getForeignPscenter()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3086
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v11, 0x7f1007ba

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 3095
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v11, 0x7f1007bd

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 3096
    .local v6, "screenName":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v11, 0x7f1007be

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3097
    .local v5, "location":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v11, 0x7f1007bf

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3098
    .local v4, "friendCount":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v11, 0x7f1007c0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3099
    .local v3, "followerCount":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v11, 0x7f1007c1

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3100
    .local v7, "statusCount":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v11, 0x7f1007bc

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3102
    .local v0, "avatar":Landroid/widget/ImageView;
    if-eqz v9, :cond_0

    .line 3104
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3105
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3106
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFriends_count()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3107
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFollowers_count()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3108
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getStatuses_count()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3109
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getAvatar_large()Ljava/lang/String;

    move-result-object v1

    .line 3111
    .local v1, "avatarUrl":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v1, v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->loadAvatarPhoto(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3089
    .end local v0    # "avatar":Landroid/widget/ImageView;
    .end local v1    # "avatarUrl":Ljava/lang/String;
    .end local v3    # "followerCount":Landroid/widget/TextView;
    .end local v4    # "friendCount":Landroid/widget/TextView;
    .end local v5    # "location":Landroid/widget/TextView;
    .end local v6    # "screenName":Landroid/widget/TextView;
    .end local v7    # "statusCount":Landroid/widget/TextView;
    :cond_4
    const-string v10, "AbstractGalleryActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showUserInfo, display unlogin layout!! bShow="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",tokenValid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3091
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected showUserInfoMatchWithGoldBox()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 3025
    const/4 v7, 0x0

    .line 3026
    .local v7, "userInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getHasLogin()Z

    move-result v4

    .line 3027
    .local v4, "bShow":Z
    new-instance v8, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {v8, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isLogin()Z

    move-result v6

    .line 3028
    .local v6, "tokenValid":Z
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    if-nez v8, :cond_1

    .line 3029
    const-string v8, "AbstractGalleryActivity"

    const-string/jumbo v9, "showUserInfoMatchWithGoldBox, mViewPersonCenter == null!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_0
    :goto_0
    return-void

    .line 3033
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v9, 0x7f10071f

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3034
    .local v1, "addView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v9, 0x7f100720

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3036
    .local v0, "accoutlayout":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getForeignPscenter()Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v4, :cond_2

    if-eqz v6, :cond_4

    .line 3037
    :cond_2
    const-string v8, "AbstractGalleryActivity"

    const-string/jumbo v9, "showUserInfoMatchWithGoldBox, display login layout!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3039
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v7

    .line 3040
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getForeignPscenter()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3041
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3042
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3057
    :goto_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v9, 0x7f100722

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3058
    .local v5, "nameView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewPersonCenter:Landroid/widget/LinearLayout;

    const v9, 0x7f100721

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3060
    .local v2, "avatar":Landroid/widget/ImageView;
    if-nez v7, :cond_6

    .line 3061
    const-string v8, "AbstractGalleryActivity"

    const-string/jumbo v9, "showUserInfoMatchWithGoldBox, userInfo = null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3044
    .end local v2    # "avatar":Landroid/widget/ImageView;
    .end local v5    # "nameView":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 3047
    :cond_4
    const-string v8, "AbstractGalleryActivity"

    const-string/jumbo v9, "showUserInfoMatchWithGoldBox, display unlogin layout!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    if-eqz v1, :cond_5

    .line 3049
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3051
    :cond_5
    if-eqz v0, :cond_0

    .line 3052
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 3065
    .restart local v2    # "avatar":Landroid/widget/ImageView;
    .restart local v5    # "nameView":Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3066
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getAvatar_large()Ljava/lang/String;

    move-result-object v3

    .line 3068
    .local v3, "avatarUrl":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v3, v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->loadAvatarPhoto(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startCamera()V
    .locals 5

    .prologue
    .line 3957
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_mainlist"

    const-string v2, "action_mainlist_camera_btn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3960
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideRightMenu()V

    .line 3962
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3963
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 3966
    :cond_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    .line 3967
    return-void
.end method

.method public startFaceLandscapeState(I)V
    .locals 2
    .param p1, "stateType"    # I

    .prologue
    .line 1081
    const-string/jumbo v0, "startFaceLandscapeState enter"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1083
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewTab:I

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mStartPLFirst:Z

    .line 1085
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1087
    return-void
.end method

.method public startGetMultiPhoto(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1646
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1647
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1649
    .local v0, "data":Landroid/os/Bundle;
    :goto_0
    const-string v2, "get-multi-photo"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1650
    const-string/jumbo v2, "media-path"

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1652
    return-void

    .line 1647
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateActionBar()V
    .locals 2

    .prologue
    .line 4560
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4562
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarMore:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4563
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarMore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4573
    :cond_0
    :goto_0
    return-void

    .line 4568
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarMore:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4569
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarMore:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMenuItem(I)V
    .locals 2
    .param p1, "clickedId"    # I

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupGallery:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2448
    :goto_0
    return-void

    .line 2433
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mAllMenuGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 2434
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initRightMenu()V

    .line 2437
    :cond_1
    const v0, 0x7f10084b

    if-ne v0, p1, :cond_2

    .line 2438
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I

    .line 2439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mVgFolder:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateHiLightStatus(Landroid/view/View;)V

    .line 2440
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2441
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMidFolderSettingLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2442
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->nMenuOldId:I

    goto :goto_0

    .line 2446
    :cond_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initMenuItem(I)V

    .line 2447
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->nMenuOldId:I

    goto :goto_0
.end method

.method public weiboLogin()V
    .locals 2

    .prologue
    .line 2190
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    .line 2191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->loginSinaWeibo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;)V

    .line 2220
    return-void
.end method
