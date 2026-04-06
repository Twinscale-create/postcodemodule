import * as React from "react"
import { cva, type VariantProps } from "class-variance-authority"
import { cn } from "@/lib/utils"

const badgeVariants = cva(
  "inline-flex items-center rounded-sm border px-1.5 py-0.5 text-[10px] font-bold tracking-widest uppercase transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 font-mono",
  {
    variants: {
      variant: {
        default:     "border-transparent bg-primary/15 text-primary hover:bg-primary/25",
        secondary:   "border-transparent bg-secondary/10 text-secondary-foreground",
        destructive: "border-transparent bg-destructive text-destructive-foreground",
        outline:     "text-foreground border-border",
        prio:        "border-amber-500/40 bg-amber-500/12 text-amber-400",
        hoog:        "border-yellow-500/35 bg-yellow-500/10 text-yellow-300",
        match:       "border-emerald-500/35 bg-emerald-500/10 text-emerald-400",
        warn:        "border-orange-500/35 bg-orange-500/10 text-orange-400",
        danger:      "border-red-500/35 bg-red-500/10 text-red-400",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  }
)

export interface BadgeProps
  extends React.HTMLAttributes<HTMLDivElement>,
    VariantProps<typeof badgeVariants> {}

function Badge({ className, variant, ...props }: BadgeProps) {
  return (
    <div className={cn(badgeVariants({ variant }), className)} {...props} />
  )
}

export { Badge, badgeVariants }
