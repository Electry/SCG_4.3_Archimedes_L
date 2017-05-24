.class public Lcom/lenovo/scg/gallery3d/util/UsageStatistics;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# static fields
.field public static final ACTION_CAPTURE_DONE:Ljava/lang/String; = "CaptureDone"

.field public static final ACTION_CAPTURE_FAIL:Ljava/lang/String; = "CaptureFail"

.field public static final ACTION_CAPTURE_START:Ljava/lang/String; = "CaptureStart"

.field public static final ACTION_SHARE:Ljava/lang/String; = "Share"

.field public static final COMPONENT_CAMERA:Ljava/lang/String; = "Camera"

.field public static final COMPONENT_EDITOR:Ljava/lang/String; = "Editor"

.field public static final COMPONENT_GALLERY:Ljava/lang/String; = "Gallery"

.field public static final COMPONENT_IMPORTER:Ljava/lang/String; = "Importer"

.field public static final TRANSITION_BACK_BUTTON:Ljava/lang/String; = "BackButton"

.field public static final TRANSITION_BUTTON_TAP:Ljava/lang/String; = "ButtonTap"

.field public static final TRANSITION_INTENT:Ljava/lang/String; = "Intent"

.field public static final TRANSITION_ITEM_TAP:Ljava/lang/String; = "ItemTap"

.field public static final TRANSITION_MENU_TAP:Ljava/lang/String; = "MenuTap"

.field public static final TRANSITION_PINCH_IN:Ljava/lang/String; = "PinchIn"

.field public static final TRANSITION_PINCH_OUT:Ljava/lang/String; = "PinchOut"

.field public static final TRANSITION_SWIPE:Ljava/lang/String; = "Swipe"

.field public static final TRANSITION_UP_BUTTON:Ljava/lang/String; = "UpButton"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    return-void
.end method

.method public static onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "screenComponent"    # Ljava/lang/String;
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 46
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "optional_value"    # J

    .prologue
    .line 47
    return-void
.end method

.method public static setPendingTransitionCause(Ljava/lang/String;)V
    .locals 0
    .param p0, "cause"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method
