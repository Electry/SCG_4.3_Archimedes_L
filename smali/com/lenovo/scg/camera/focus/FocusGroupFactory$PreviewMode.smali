.class public final enum Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;
.super Ljava/lang/Enum;
.source "FocusGroupFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusGroupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

.field public static final enum PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

.field public static final enum PM_Continuous_Video:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

.field public static final enum PM_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

.field public static final enum PM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    const-string v1, "PM_Continuous"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    .line 37
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    const-string v1, "PM_Continuous_Video"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous_Video:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    .line 38
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    const-string v1, "PM_Infinity"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    .line 39
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    const-string v1, "PM_Lock"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous_Video:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->$VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->$VALUES:[Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    return-object v0
.end method
