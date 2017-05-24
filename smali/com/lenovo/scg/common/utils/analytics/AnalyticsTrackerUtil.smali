.class public Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;
.super Ljava/lang/Object;
.source "AnalyticsTrackerUtil.java"


# static fields
.field public static final CAMERA_SWITCH:Ljava/lang/String; = "CAMERA_SWITCH"

.field public static final EFFECTS_VIEW:Ljava/lang/String; = "EFFECTS_VIEW"

.field public static final FACE_CANCLE_ALL:Ljava/lang/String; = "FACE_PRETTY_CANCLE_ALL_BTN"

.field public static final FACE_CANCLE_ONE:Ljava/lang/String; = "FACE_PRETTY_CANCLE_ONE_BTN"

.field public static final FACE_ENLARGE_EYE:Ljava/lang/String; = "FACE_PRETTY_ENLARGE_EYE_BTN"

.field public static final FACE_PRETTY:Ljava/lang/String; = "FACE_PRETTY"

.field public static final FACE_PRETTY_CHANGE_GENDER:Ljava/lang/String; = "FACE_PRETTY_CHANGE_GENDER_RADIOBTN"

.field public static final FACE_PRETTY_MAN:Ljava/lang/String; = "FACE_PRETTY_GENDER_MAN_RADIOBTN"

.field public static final FACE_PRETTY_OTHER:Ljava/lang/String; = "FACE_PRETTY_GENDER_OTHER_RADIOBTN"

.field public static final FACE_PRETTY_WOMAN:Ljava/lang/String; = "FACE_PRETTY_GENDER_WOMAN_RADIOBTN"

.field public static final FACE_ROATE:Ljava/lang/String; = "FACE_PRETTY_ROTATE_BTN"

.field public static final FACE_SAVE_ALL:Ljava/lang/String; = "FACE_PRETTY_SAVE_ALL_BTN"

.field public static final FACE_SAVE_ONE:Ljava/lang/String; = "FACE_PRETTY_SAVE_ONE_BTN"

.field public static final FACE_SKIN_SOFT:Ljava/lang/String; = "FACE_PRETTY_SKIN_SOFT_BTN"

.field public static final FACE_SMALL_FACE:Ljava/lang/String; = "FACE_PRETTY_SMALL_FACE_BTN"

.field public static final FACE_WHITE:Ljava/lang/String; = "FACE_PRETTY_WHITE_BTN"

.field public static final MORE_VIEW:Ljava/lang/String; = "MORE_VIEW"

.field public static final Ordinary_CAMERA:Ljava/lang/String; = "P_CAMERA"

.field public static final RWIND_VIEW:Ljava/lang/String; = "REWIND_VIEW"

.field public static final SCENE_MODE_FACE_BEAUTIFICATION:Ljava/lang/String; = "SCENE_MODE_FACE_BEAUTIFICATION"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "SCENE_MODE_HDR"

.field public static final SCENE_MODE_LOWLIGHT:Ljava/lang/String; = "SCENE_MODE_LOWLIGHT"

.field public static final SCENE_MODE_MACRO:Ljava/lang/String; = "SCENE_MODE_MACRO"

.field public static final SCENE_MODE_PANORAMIC:Ljava/lang/String; = "SCENE_MODE_PANORAMIC"

.field public static final SCENE_MODE_SELF_CAPTURE:Ljava/lang/String; = "SCENE_MODE_SELF_CAPTURE"

.field public static final SCENE_MODE_SMAIL:Ljava/lang/String; = "SCENE_MODE_SMAIL"

.field public static final SCENE_MODE_VIEW:Ljava/lang/String; = "SCENE_MODE_VIEW"

.field public static final SCENE_VIEW:Ljava/lang/String; = "SCENE_VIEW"

.field public static final SHORTCUT_VIEW:Ljava/lang/String; = "SHORTCUT_VIEW"

.field public static final SMART_PLUS_VIEW:Ljava/lang/String; = "SMART_PLUS_VIEW"

.field public static final SPECIAL_EFFECT_VIEW:Ljava/lang/String; = "SPECIAL_EFFECT_VIEW"

.field public static final SUPER_CAMERA:Ljava/lang/String; = "S_CAMERA"

.field public static final USER_SHORTCUT_VIEW:Ljava/lang/String; = "USER_SHORTCUT_VIEW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FacePrettyTraceEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "FACE_PRETTY"

    invoke-static {v0, p0}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->TraceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static TraceEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    return-void
.end method
