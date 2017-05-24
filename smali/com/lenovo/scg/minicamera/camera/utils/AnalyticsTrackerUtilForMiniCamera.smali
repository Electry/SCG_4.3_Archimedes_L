.class public Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;
.super Ljava/lang/Object;
.source "AnalyticsTrackerUtilForMiniCamera.java"


# static fields
.field public static final ACTION_ACTIVITY_ONCREATE:Ljava/lang/String; = "click_activity_oncreate"

.field public static final ACTION_CLICK_BUTTON_FLASH:Ljava/lang/String; = "click_button_flash"

.field public static final ACTION_CLICK_BUTTON_PIC_SELECT:Ljava/lang/String; = "click_button_picture_select"

.field public static final ACTION_CLICK_BUTTON_RETURN:Ljava/lang/String; = "click_button_return"

.field public static final ACTION_CLICK_GOLDBOX_QRCODE:Ljava/lang/String; = "click_goldbox_qrcode"

.field public static final ACTION_CLICK_IVC_QRCODE:Ljava/lang/String; = "click_ivc_qrcode"

.field public static final ACTION_CLICK_RESULT_BUTTON_CANCEL:Ljava/lang/String; = "click_result_button_cancel"

.field public static final ACTION_CLICK_RESULT_BUTTON_DETAIL:Ljava/lang/String; = "click_result_button_detail"

.field public static final ACTION_CLICK_SMART_MODE:Ljava/lang/String; = "click_smart_mode"

.field public static final ACTION_CLICK_TAB_BARCODE:Ljava/lang/String; = "click_tab_barcode"

.field public static final ACTION_CLICK_TAB_BOOKANDCD:Ljava/lang/String; = "click_tab_bookandcd"

.field public static final ACTION_CLICK_TAB_QRCODE:Ljava/lang/String; = "click_tab_qrcode"

.field public static final ACTION_CLICK_TAB_TRANS:Ljava/lang/String; = "click_tab_trans"

.field private static final MINICAMERA_CATEGORY_ENTER:Ljava/lang/String; = "minicamera_category_enter"

.field private static final MINICAMERA_CATEGORY_MAINPAGE:Ljava/lang/String; = "minicamera_category_mainpage"

.field private static final MINICAMERA_CATEGORY_RESULTPAGE:Ljava/lang/String; = "minicamera_category_resultpage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterTraceEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string/jumbo v0, "minicamera_category_enter"

    invoke-static {v0, p0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->traceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static mainPageTraceEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string/jumbo v0, "minicamera_category_mainpage"

    invoke-static {v0, p0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->traceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static resultPageTraceEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "minicamera_category_resultpage"

    invoke-static {v0, p0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->traceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static traceEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method
