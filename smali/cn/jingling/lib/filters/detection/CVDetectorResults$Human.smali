.class public Lcn/jingling/lib/filters/detection/CVDetectorResults$Human;
.super Ljava/lang/Object;
.source "CVDetectorResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/filters/detection/CVDetectorResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Human"
.end annotation


# instance fields
.field public eyes:[Landroid/graphics/Rect;

.field public face:Landroid/graphics/Rect;

.field public numOfEyes:I

.field final synthetic this$0:Lcn/jingling/lib/filters/detection/CVDetectorResults;


# direct methods
.method public constructor <init>(Lcn/jingling/lib/filters/detection/CVDetectorResults;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcn/jingling/lib/filters/detection/CVDetectorResults$Human;->this$0:Lcn/jingling/lib/filters/detection/CVDetectorResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
